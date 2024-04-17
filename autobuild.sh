#!/bin/bash

set -e

# 如果没有build目录，创建该目录
if [ ! -d `pwd`/build ]; then
    mkdir `pwd`/build
fi

rm -rf `pwd`/build/*

cd `pwd`/build &&
    cmake .. &&
    make

# 回到项目根目录
cd ..

# 把头文件拷贝到 /usr/include/Reep  so库拷贝到 /usr/lib    PATH
if [ ! -d /usr/include/Reep ]; then 
    mkdir /usr/include/Reep
fi

for header in `ls *.h`
do
    cp $header /usr/include/Reep
done

cp `pwd`/lib/libReep.so /usr/lib

ldconfig