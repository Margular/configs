#!/bin/bash

export ROOT_DIR=/mnt/extra/forensics_tools/static_binaries
export INCLUDES=-I$ROOT_DIR/include
export CFLAGS="-static $INCLUDES"
export CXXFLAGS=$CFLAGS
export LDFLAGS="-static -L$ROOT_DIR/lib"
export LD_LIBRARY_PATH=$ROOT_DIR/lib
