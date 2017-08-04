#!/bin/bash

if [[ $# -lt 1 ]]; then
    echo "USAGE: $1 <suspicious_file>"
    exit 0
fi

filename=$1

if [[ ! -r ${filename} ]]; then
    echo "ERROR: file '${filename}' could not be found/read. Exiting."
    exit -1
fi

echo -n "[+] CLASSIFYING: "
md5sum ${filename}

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

find ${DIR} -type f \( -name "*.yar" -o -name "*.yara" \) -exec yara {} ${filename} \;

echo "[+] Done :)"
