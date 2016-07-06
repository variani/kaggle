#! /bin/bash

datadir="data"
gfile=".gitignore"

dirs=("input" "output-libffm" "output-py" "rdata" "template" "log" "output-libsvm" "output-r" "submission")

for d in "${dirs[@]}"; do
  echo $d
  
  echo " * mkdir in $datadir"
  mkdir -p $datadir/$d

  echo " * touch $gfile in $datadir"
  echo "*\.*" > $datadir/$d/$gfile
  
done
