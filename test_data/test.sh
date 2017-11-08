#!/bin/bash

#this script assumes that rustc and cargo is installed

#compile rust test
if [ ! -f ./rust_eudex_test ]; then
    cd ../rust_code
    cargo build
    cp ./target/debug/eudex_test ../test_data/rust_eudex_test
    cd ../test_data
fi

#compile c test
gcc ../src/eudex_test.c ../src/libeudex.c -ldl -o c_eudex_test -O3 -Wall -Wextra

#run tests to generate hashes from american-english dictionary
./rust_eudex_test
./c_eudex_test

#diff
diff c_hash_values rust_reference_hash_values

if [[ $? == 0 ]]; then
    echo "-----------------------------"
    echo "---- HASHES IS IDENTICAL ----"
    echo "-----------------------------"
fi
