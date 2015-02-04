#!/bin/sh

function copytar_encode() {

    if [[ $# -lt 1 ]]; then
        echo usage: $0 file...
        return 1
    fi

    CTFILE=/tmp/copytar.encode
    tar -cz -f $CTFILE $*
    echo -n "COPYTAR "
    base64 -w0 $CTFILE
    echo
    rm  $CTFILE

}

copytar_encode $*
