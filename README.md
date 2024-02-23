# termux-xmrig
Create an XMRig script in Termux.

Instructions:

1.First, go to [GitHub Build Action](https://github.com/termux/termux-app/actions/runs/7378253068) to download the Termux version suitable for your device.

2.Install and launch Termux.
After installing Termux, first run `pkg install git` to install Git upon opening.

3.Enter
```
git clone https://github.com/TokiZeng/termux-xmrig
```
4.Enter
```
cd termux-xmrig
```
5.Enter 
```
chmod +x build.sh
```
6.Enter 
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

# termux-xmrig
在Termux中創建一個XMRig腳本。

使用說明：

1.首先，前往 [GitHub Build Action](https://github.com/termux/termux-app/actions/runs/7378253068) 下載適合您裝置的Termux版本。

2.安裝並啟動Termux。
安裝完Termux開啟先執行 `pkg install git` 安裝git

3.輸入
```
git clone https://github.com/TokiZeng/termux-xmrig
```
4.輸入
```
cd termux-xmrig
```
5.輸入 
```
chmod +x build.sh
```
6.輸入 
```
./build.sh
```
在過程中，如果提示需要下載，按Y；對於所有其他提示，按N。


此腳本可在Android系統的Termux上創建XMRig。它還支援使用XMRig支援的所有CPU演算法進行挖礦。腳本內容如下：

```
apt update && apt upgrade
pkg install automake clang git vim cmake
git clone https://github.com/xmrig/xmrig
cd xmrig
mkdir build && cd build
cmake .. -DWITH_HWLOC=OFF
make -j$(nproc)
```

建造完成後，XMRig可執行檔將位於 `xmrig/build` 目錄中。要運行它，請按照以下說明操作：

1. 輸入 `ls` 檢查是否有 `xmrig` 文件夾。

2. 輸入 `cd xmrig/build`，然後輸入 `ls` 檢查是否有 `xmrig` 檔案。

如果一切正確，這意味著您的編譯成功了。接下來，您可以訪問 [XMRig的命令行選項](https://xmrig.com/docs/miner/command-line-options) 查看命令。

這裡提供一個範本：
```
./xmrig -o hk.zephyr.herominers.com:1123 -u ZEPHs8RuJ66Tf43KBbbtnQNxjm48qN6S83Zko2hNv9uhMPHb3jchK9WRkvppjEtRQy5dr2UNBSggdNc1pNJYNYL1ipwqzYgMZZ5.op -p x -t 3
```
此命令表明我連接到herominers礦池，並使用3個CPU線程挖掘ZEPH。這個命令只是一個範本，根據您的需求進行修改。
