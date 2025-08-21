#!/bin/bash

set -e

if [[ $* == *--help* ]]
then
    echo "USAGE: \`./build.sh --verified\` for verified code or \`./build.sh --unverified\` for unverified (more features)"
elif [[ $* == *--verified* ]]
then
    agda2hs ./src/Lam/Agda/Lam/Export.agda
    mv ./src/Lam/Agda/Lam/*.hs ./src/Lam
    rm ./src/Lam/Export.hs
elif [[ $* == *--unverified* ]]
then
    cp ./src/Lam/Unverified/*.hs ./src/Lam
else
    echo "USAGE: \`./build.sh --verified\` for verified code or \`./build.sh --unverified\` for unverified (more features)"
fi


