#!/bin/sh

sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install linux-libc-dev:i386
sudo apt-get install gcc-multilib

sudo apt-get install gcc-arm-linux-gnueabi
sudo apt-get install gcc-arm-linux-gnueabihf
sudo apt-get install musl-dev musl-tools
sudo apt-get install gcc-aarch64-linux-gnu
sudo apt-get install gcc-mips64el-linux-gnuabi64
sudo apt-get install gcc-s390x-linux-gnu

mkdir crosscompilers
cd crosscompilers
wget -q https://musl.cc/arm-linux-musleabihf-cross.tgz
tar --strip-components=1 -zxf ./arm-linux-musleabihf-cross.tgz
wget -q https://musl.cc/armel-linux-musleabi-cross.tgz
tar --strip-components=1 -zxf armel-linux-musleabi-cross.tgz
wget -q https://musl.cc/aarch64-linux-musl-cross.tgz
tar --strip-components=1 -zxf aarch64-linux-musl-cross.tgz
cd ..
