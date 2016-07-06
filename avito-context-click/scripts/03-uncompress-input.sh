#! /bin/bash

# @ http://askubuntu.com/a/586995
#```
# sudo apt-get install dtrx
#```

datadir="data/input"

pushd $datadir

for f in $(ls | grep 7z); do
  echo $f 
done

popd
