cd contrib/android
docker build -t electrum-android-builder-img .

docker run -it -d --rm \
    -v $PWD:/home/user/wspace/electrum \
    -v $PWD/.buildozer/.gradle:/home/user/.gradle \
    --workdir /home/user/wspace/electrum \
    electrum-android-builder-img
echo "docker exec -it <docker_vm_hash> bash"
echo "sudo -i"
echo "pip install cython buildozer kivy"
echo "cd /home/user/wspace/electrum"
echo "./contrib/android/make_apk"
echo ".apk will be located in dist"
