#!/bin/sh

# if [[ $# -ne 1 ]]; then
#     echo usage: $0 session.script
#     exit 1
# fi

function copytar_decode() {

    CTFILE=/tmp/copytar.encode
    sed "s,\x1B\[[0-9;]*[a-zA-Z],,g" $* | egrep "^COPYTAR" | tr -d '\r' | while read header content; do
        echo $content | base64 -d > $CTFILE
        tar -xf $CTFILE
    done
    rm  $CTFILE

}

copytar_decode $*
