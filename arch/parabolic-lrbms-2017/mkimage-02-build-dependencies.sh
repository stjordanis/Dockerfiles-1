#!/bin/bash

set -e

cd $HOME/parabolic-lrbms-2017-code
export OPTS=gcc-relwithdebinfo
source PATH.sh

./local/bin/download_external_libraries.py
git clone https://github.com/pymor/pymor.git
./local/bin/build_external_libraries.py
rm -rf pymor

