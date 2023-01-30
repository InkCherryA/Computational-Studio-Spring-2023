#!/bin/bash
x=0
y=$(printf "%04d" $x)

while [ 1 == 1 ]
do
  if [ ! -e p$y ]
  then
    cp -r template p$y
    mv p$y/tmp.css p$y/$y.css
    mv p$y/tmp.html p$y/$y.html
    sed -i -e "s/tmp/$y/" p$y/$y.html
    break
  fi
  x=$((x+1))
  y=$(printf "%04d" $x)
done

