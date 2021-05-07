#!/bin/bash
echo "begin test..."

cd NIA-unbound
    cd 3-4-4-5-eq
    ./runz3.sh > z3-result 
    ./runcvc4.sh > cvc4-result
    cd ..
cd ..

cd NIA-bound
    cd 3-4-4-5-eq
    ./runz3.sh > z3-result 
    ./runcvc4.sh > cvc4-result
    cd ..
cd ..