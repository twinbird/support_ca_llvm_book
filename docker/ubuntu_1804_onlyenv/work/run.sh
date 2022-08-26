#!/bin/sh

echo "---------------------------------"
echo " Downloading LLVM repository ..."
echo "---------------------------------"

if [ ! -d "llvm-project" ]; then
    git clone https://github.com/msyksphinz-self/llvm-project.git -b llvm-myriscvx120
fi

echo "---------------------------------"
echo " Running Docker ..."
echo "---------------------------------"

docker pull msyksphinz/support_llvm:ubuntu_1804_onlyenv
docker run --rm -v ${PWD}/llvm-project:/llvm-project/ -it msyksphinz/support_llvm:ubuntu_1804_onlyenv "/bin/bash"
