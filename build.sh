#!/bin/bash
set -eu -o pipefail

sharedir=$PREFIX/share
outdir=$sharedir/$PKG_NAME-$PKG_VERSION-$PKG_BUILDNUM
mkdir -p $outdir
mkdir -p $PREFIX/bin

cp -R $SRC_DIR/* $sharedir
# Provide a link to the scripts from $PREFIX/bin.
find $sharedir -type f -perm -111 -exec ln -s {} $PREFIX/bin \;
