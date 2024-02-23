# termux-xmrig
Create an XMRig script in Termux.

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

After the build is complete, the XMRig executable will be in the `xmrig/build` directory. To run it, please follow the instructions below:
1. Enter `ls` to check if there is an `xmrig` folder.
2. Enter `cd xmrig/build`, then enter `ls` to check for the presence of the `xmrig` file.

If everything is correct, this means your compilation was successful. Next, you can visit [XMRig's Command Line Options](https://xmrig.com/docs/miner/command-line-options) to view the commands.

Here is an example template:
```
./xmrig -o hk.zephyr.herominers.com:1123 -u ZEPHs8RuJ66Tf43KBbbtnQNxjm48qN6S83Zko2hNv9uhMPHb3jchK9WRkvppjEtRQy5dr2UNBSggdNc1pNJYNYL1ipwqzYgMZZ5.op -p x -t 3
```
This command indicates that I'm connecting to the herominers pool and mining ZEPH with 3 CPU threads. This command is just a template, modify it according to your needs.
