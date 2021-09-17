echo "requires running java11"
echo ' 
yum install nodejs -y
npm -g install randomstring'
randomstring
rm -rf my-release-key.jks
keytool -genkey -v -keystore my-release-key.jks -alias alias_name -keyalg RSA -keysize 2048 -validity 10000
#cp -rf wallet/build/outputs/apk/prod/release/wallet-prod-release-unsigned.apk .

/home/Android/Sdk/build-tools/29.0.3/apksigner sign --ks my-release-key.jks --out RadioCoin-Android-signed-eabi.apk Electrum-4.1.5.0-armeabi-v7a-release-unsigned.apk
 
