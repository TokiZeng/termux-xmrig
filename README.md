# termux-xmrig
Create an XMRig script in Termux.

The script can create XMRig in Termux on the Android system. It also supports mining with all CPU algorithms supported by XMRig. The content of the script is as follows:

Instructions:

1.First, go to [GitHub Build Action](https://github.com/termux/termux-app/actions/runs/7378253068) to download the Termux version suitable for your device.

2.Install and launch Termux.

3.Enter
```
git clone https://github.com/TokiZeng/termux-xmrig
```
4.Enter 
```
chmod +x build.sh
```
5.Enter 
```
./build.sh
```
During the process, if prompted to download, press Y; for all other prompts, press N.

```
apt update && apt upgrade
pkg install automake clang git vim cmake
git clone https://github.com/xmrig/xmrig
cd xmrig
mkdir build && cd build
cmake .. -DWITH_HWLOC=OFF
make -j$(nproc)
```
