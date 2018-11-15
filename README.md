# PhysicsFS - https://icculus.org/physfs/

[![Build Status](https://travis-ci.org/RossMeikleham/physfs-3ds.svg?branch=master)](https://travis-ci.org/RossMeikleham/physfs-3ds)

A portable, flexible file i/o abstraction.

Version 3.0.1 for Nintendo 3DS Homebrew (using libctru + sdl). 
Fork of physfs-switch for the Nintendo Switch : https://github.com/carstene1ns/physfs-switch

## Building for 3DS

```bash
rm -rf build
mkdir build
cd build
cmake .. -DCMAKE_TOOLCHAIN_FILE=../Toolchain.cmake -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=$DEVKITPRO/portlibs/3ds \
    -DPHYSFS_BUILD_SHARED=OFF -DPHYSFS_BUILD_TEST=OFF
make
sudo make install

```

Please see the [docs](docs/) directory for documentation.
Please see [LICENSE.txt](LICENSE.txt) for licensing information.
