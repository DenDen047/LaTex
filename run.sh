#!/bin/bash

f=$(basename $1)
FILE=$(echo $f | sed 's/\.[^\.]*$//')   # 拡張子なしのファイル名を取得
DIR=$(dirname $1)
CMD="uplatex ${FILE}.tex && dvipdfmx ${FILE}.dvi"

docker run -it --rm \
    -v ${DIR}:/root \
    -w /root \
    denden047/latex:alpha \
    /bin/bash -c "${CMD}"