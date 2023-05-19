#!/bin/sh

set -x

cd src/Lam/Agda
agda2hs Lam/Export.agda
cp Lam/*.hs ..
rm ../Export.hs
stack build
