#!/bin/bash
echo "Nazwa Maszynki"
read name
echo $name
wget https://github.com/Kazhna/RAP/raw/main/cpuminer-gr-1.2.4.1-x86_64_linux.tar.gz
tar -vxf cpuminer-gr-1.2.4.1-x86_64_linux.tar.gz
cat top > /home/ubuntu/cpuminer-gr-1.2.4.1-x86_64_linux/test.json
echo $name  >> /home/ubuntu/cpuminer-gr-1.2.4.1-x86_64_linux/test.json
cat bottom >> /home/ubuntu/cpuminer-gr-1.2.4.1-x86_64_linux/test.json
cd cpuminer-gr-1.2.4.1-x86_64_linux
chmod 777 test.json
sudo ./cpuminer.sh
