#!/usr/bin/env bash

set -e;
pushd () { command pushd "$@" > /dev/null; }
popd () { command popd "$@" > /dev/null; }

cmake\
    -G "Unix Makefiles" \
    -D CMAKE_C_COMPILER=gcc-10 \
    -D CMAKE_C_FLAGS_DEBUG_INIT="-Wall -Wextra -pedantic -Wconversion -O2 -g" \
    -Wdeprecated \
    -Werror=deprecated \
    --log-level=WARNING \
    -S .\
    -B build/debug;
    # --fresh \

printf "\n******************* PROJECT OBJECT BUILT IN DEBUG MODE *******************\n\n";

pushd build/debug;

cmake --build .;

printf "\n******************* PROJECT EXECUTABLE BUILT IN DEBUG MODE *******************\n\n";
popd;