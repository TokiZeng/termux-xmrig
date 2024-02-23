#Instructions:
#1.First, go to https://github.com/termux/termux-app/actions/runs/7378253068 to download the Termux version suitable for your device.
#2.Install and launch Termux.
#3.Enter git clone https://github.com/TokiZeng/termux-xmrig
#4.Enter chmod +x build.sh
#5.Enter ./build.sh
#During the process, if prompted to download, press Y; for all other prompts, press N.


apt update && apt upgrade
pkg install automake clang git vim cmake
chmod +x start.sh
git clone https://github.com/xmrig/xmrig
cd xmrig
mkdir build && cd build
cmake .. -DWITH_HWLOC=OFF
make -j$(nproc)
cd ~
cp termux-xmrig/start.sh ~
rm termux-xmrig/start.sh
cd
