# termux-xmrig
Create an XMRig script in Termux.

The script can create XMRig in Termux on the Android system. It also supports mining with all CPU algorithms supported by XMRig. The content of the script is as follows:
```
apt update && apt upgrade
pkg install automake clang git vim cmake
git clone https://github.com/xmrig/xmrig
cd xmrig
mkdir build && cd build
cmake .. -DWITH_HWLOC=OFF
make -j$(nproc)
```
