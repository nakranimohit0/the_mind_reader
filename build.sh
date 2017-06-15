#!/bin/sh

echo "${BASH_SOURCE[0]}" "$@"

set -ev

cd "$(dirname "$0")"

aclocal
autoconf
automake --add-missing

./configure
make -j4
make install
