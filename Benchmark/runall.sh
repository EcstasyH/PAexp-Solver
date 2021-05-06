#!/bin/bash
echo "begin test..."

cd NIA-bound
    cd 2-3-2-3-eq
    ./runz3.sh > z3-result 
    ./runcvc4.sh > cvc4-result
    cd ..
    cd 3-4-3-4-eq
    ./runz3.sh > z3-result 
    ./runcvc4.sh > cvc4-result
    cd ..
cd ..
