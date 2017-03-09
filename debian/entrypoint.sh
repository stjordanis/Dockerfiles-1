#!/bin/bash

export LANG=en_US.UTF-8

echo 'To trigger https://github.com/dune-community/dune-gdt/issues/93, execute:'
echo '  cd /home/user/dune-gdt-super/debian-minimal'
echo '  . PATH.sh'
echo '  export OPTS=gcc-debug.ninja'
echo '  cd $INSTALL_PREFIX/../build-$OPTS/dune-gdt'
echo '  ninja -j$(nproc --all) test_linearelliptic__swipdg_discretization'

exec gosu user "$@"

