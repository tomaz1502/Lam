#!/bin/sh

set -xe

agda2hs ./src/Lam/Agda/Lam/Export.agda
mv ./src/Lam/Agda/Lam/*.hs ./src/Lam
rm ./src/Lam/Export.hs
stack build
