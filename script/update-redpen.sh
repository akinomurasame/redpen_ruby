#!/bin/sh -xe

mkdir -p ./tmp
git clone https://github.com/recruit-tech/redpen.git ./tmp/redpen
cd ./tmp/redpen
git checkout $1
mvn install
cd ../../lib
rm -rf ./redpen-cli-*
tar xzvf ../tmp/redpen/redpen-cli/target/redpen-cli-*-assembled.tar.gz
cp ../tmp/redpen/LICENSE.txt ./redpen-cli-*/
