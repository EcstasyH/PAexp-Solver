#!/bin/bash
echo "begin test..."

cd NIA-bound
    cd 1-2-2-3
    ./runz3.sh > z3-result 
    ./runcvc4.sh > cvc4-result
    cd ..
cd ..