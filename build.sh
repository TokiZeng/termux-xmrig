#

apt update && apt upgrade
pkg install automake clang git vim cmake
git clone https://github.com/xmrig/xmrig
cd xmrig
mkdir build && cd build
cmake .. -DWITH_HWLOC=OFF
make -j$(nproc)
