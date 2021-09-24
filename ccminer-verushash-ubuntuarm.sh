#!/bin/bash
# ccminer compiler for ubuntu arm

apt install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential
git clone --single-branch -b ARM https://github.com/monkins1010/ccminer.git
cd ccminer
chmod +x build.sh
chmod +x configure.sh
chmod +x autogen.sh
./build.sh
echo "Now run ./ccminer -a verus -o stratum+tcp://na.luckpool.net:3956 -u YourWallet.YourName -p x -t 8"
