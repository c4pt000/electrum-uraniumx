# electrum-radiocoin-4.0.1 



https://github.com/c4pt000/radiox-exchange

![s1](https://raw.githubusercontent.com/c4pt000/radiox-exchange/main/radiox-current.png)

to do, soon implent paper wallet directly into electrum for both wallet clients

* based off of electrum-nmc


# for server https://github.com/c4pt000/electrumx-dogecoin-server-radiocoin-4.1.4
# for DOGECOIN https://github.com/c4pt000/electrum-dogecoin

* (old python2 version) for dogecoin-electrum 2.2.1
https://github.com/c4pt000/electrum-wallet-doge



todo:
balance bug in "history" addresses tab shows accurate balance
export privkey from wallet to transfer funds out of wallet in case of a send tx balance error
<br>
<br>
addresses tab reports current correct balance of wallet
<br>
<br>
balance bug in "history" tab, (doesnt effect "addresses" tab)
<br>

![s1](https://raw.githubusercontent.com/c4pt000/electrum-radiocoin/main/balance-bug-check-addresses-tab.png)


<br>
<br>
<br>
<br>
<br>
win10 release

https://github.com/c4pt000/electrum-radiocoin/releases/tag/win10


fedora 34
<br>
will not send a TX while running from docker use the installer natively instead 

# dont use with docker
* wont send a transaction while running from the docker guest (even with --net host)

* 07-06-2021
# PAPER wallet import works with radiocoin-electrum-4.0.1
![s1](https://raw.githubusercontent.com/c4pt000/radiocoin/master/just-the-right-QR-code-ignore-the-left.png)
# leave random deposit address and just import the QR on the right side of the crypto-currency bill (with the camera logo icon) 
* requires "pip3 install python-zbar" ? and uvcvideo and web cam support
* set default camera in "General" Preferences
![s1](https://raw.githubusercontent.com/c4pt000/radiocoin/master/electrum-import-paper-QR-radiodollar.png)
![s1](https://raw.githubusercontent.com/c4pt000/radiocoin/master/radio-electrum-4.1.4.paper-sweep.png)

# working
SAVE YOUR WALLET SEED TO RESTORE A BACKUP OF YOUR WALLET
(WITHOUT COMMITTING A DOCKER IMAGE TO A NEW WRITTEN IMAGE YOU WILL, LOSE ALL YOUR DATA WITHIN A DOCKER IMAGE!)

![s1](https://github.com/c4pt000/radiocoin/releases/download/electrum-wallet/electrum--radiocoin-sign-broadcast.png)
![s1](https://github.com/c4pt000/radiocoin/releases/download/electrum-wallet/electrum-4.1.4-radiocoin-send-amount.png)
![s1](https://github.com/c4pt000/radiocoin/releases/download/electrum-wallet/electrum-finalize-transaction.png)


requires docker (for building templates)
contrib builder build-wine for win32 installer
```
docker build -t electrum-nmc-wine-builder-img contrib/build-wine

docker run -it --name electrum-wine-builder-cont -v $PWD:/opt/wine64/drive_c/electrum-nmc --rm --workdir /opt/wine64/drive_c/electrum-nmc/contrib/build-wine  electrum-nmc-wine-builder-img  ./build.sh

```
