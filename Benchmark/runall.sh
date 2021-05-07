#!/bin/bash
echo "begin test..."

cd NIA-unbound
    cd 3-4-4-5
    ./runcvc4.sh > cvc4-result
    cd ..
    cd 4-5-5-6
    ./runz3.sh > z3-result 
    ./runcvc4.sh > cvc4-result
    cd ..
cd ..