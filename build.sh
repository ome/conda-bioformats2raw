#!/bin/bash
set -eu -o pipefail

sharedir=$PREFIX/share
pkg=$PKG_NAME-$PKG_VERSION-$PKG_BUILDNUM
outdir=$sharedir/$pkg
mkdir -p $outdir $PREFIX/bin

cp -R $SRC_DIR/* $outdir
ln -s ../share/$pkg/bin/bioformats2raw $PREFIX/bin/bioformats2raw
