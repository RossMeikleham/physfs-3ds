from devkitpro/devkitarm:latest

RUN apt-get update && apt-get install -y gcc g++ zip cmake

RUN mkdir /physfs_3ds/
ADD CMakeLists.txt /physfs_3ds/
ADD src /physfs_3ds/src
ADD test /physfs_3ds/test
ADD Toolchain.cmake /physfs_3ds/
ADD docs /physfs_3ds/docs
ADD extras /physfs_3ds/extras
WORKDIR /physfs_3ds/
RUN ls /physfs_3ds

CMD rm -rf build; \
    mkdir build; \
    cd build; \
    cmake .. -DCMAKE_TOOLCHAIN_FILE=../Toolchain.cmake -DCMAKE_BUILD_TYPE=Release \
        -DCMAKE_INSTALL_PREFIX=$DEVKITPRO/portlibs/3ds \
        -DPHYSFS_BUILD_SHARED=OFF -DPHYSFS_BUILD_TEST=OFF; \
    make; \
    sudo make install; \
    cd ../test && make && mv physfs_test.3dsx /mnt/
