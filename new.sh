#!/bin/bash

#intialize bashrc
source ./new.bashrc

y=$(printf "%04d" $currentFileIdx)

# create file and update bashrc
cp -r template p$y
mv p$y/tmp.css p$y/$y.css
mv p$y/tmp.html p$y/$y.html
sed -i -e "s/tmp/$y/" p$y/$y.html

#update bashrc
currentFileIdx=$((currentFileIdx+1))
sed -i -e "s/currentFileIdx=$(($currentFileIdx-1))/currentFileIdx=$currentFileIdx/" new.bashrc

# display file create information
y=$(printf "%04d" $currentFileIdx)

