for ElectrumX uraniumX (URX) server
https://github.com/c4pt000/ElectrumX-server-UraniumX

# for android
# https://drive.google.com/file/d/1y_VKQ3VZ9mXjyMd5ORvx6Xx8WReyRIMi/view?usp=sharing
```
cd /usr/bin
wget https://github.com/c4pt000/electrum-uraniumx/releases/download/electrum-uraniumx/electrum-uraniumx.tar.gz
tar -xvf electrum-uraniumx.tar.gz
```
![s1](https://raw.githubusercontent.com/c4pt000/electrum-uraniumx/main/ascii-art.png)
![s1](https://raw.githubusercontent.com/c4pt000/electrum-uraniumx/main/history.png)
![s1](https://raw.githubusercontent.com/c4pt000/electrum-uraniumx/main/payto.png)
![s1](https://raw.githubusercontent.com/c4pt000/electrum-uraniumx/main/paytoconfirm.png)
![s1](https://raw.githubusercontent.com/c4pt000/electrum-uraniumx/main/paytoconfirm-sent.png)


# macOS (requires python3 , xcode command line tools)
```
cd electrum-uraniumx
python3 -m pip install --upgrade pip
python3 -m pip install .
python3 -m pip install PyQt5
cd contrib
sh build-macos-automake.sh
sh make_libsecp256k1.sh
cd ..
./run_electrum
```
