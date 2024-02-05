#!/bin/bash
set -eu

pkg=bioformats2raw-$PKG_VERSION-$PKG_BUILDNUM

bindir=$PREFIX/share/$pkg/bin
mkdir -p $bindir $PREFIX/bin
cp $SRC_DIR/bin/bioformats2raw $bindir/

ln -s ../share/$pkg/bin/bioformats2raw $PREFIX/bin/bioformats2raw

libdir=$PREFIX/share/$pkg/lib
mkdir -p $libdir
cp -R $SRC_DIR/lib/* $libdir/
