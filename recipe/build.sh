#!/bin/bash

EXTRA_FLAGS="--enable-sse"
if [[ ${target_platform} == "linux-aarch64" ]]; then
  EXTRA_FLAGS=""
fi

./configure --prefix=${PREFIX} $EXTRA_FLAGS
make
make check
make install
