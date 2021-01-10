#!/bin/bash

f=$(basename $1)
FILE=$(echo $f | sed 's/\.[^\.]*$//')   # 拡張子なしのファイル名を取得
DIR=$(dirname $1)
STYLE_DIR=${PWD}
CMD="\
    platex ${FILE}.tex && \
    pbibtex ${FILE} && \
    platex ${FILE}.tex && \
    platex ${FILE}.tex && \
    dvipdfmx ${FILE} \
"

docker build -q -t denden047/latex ./docker && \
docker run -it --rm \
    -v ${DIR}:/texsrc \
    -w /texsrc \
    denden047/latex \
    /bin/bash -c "${CMD}"