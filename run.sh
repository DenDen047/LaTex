#!/bin/bash

f=$(basename $1)
FILE=$(echo $f | sed 's/\.[^\.]*$//')   # 拡張子なしのファイル名を取得
DIR=$(dirname $1)
STYLE_DIR=${PWD}
CMD="uplatex ${FILE}.tex && dvipdfmx ${FILE}.dvi"

docker run -it --rm \
    -v ${DIR}:/root \
    -v ${STYLE_DIR}/styles:/styles \
    -w /root \
    denden047/latex \
    /bin/bash -c "${CMD}"