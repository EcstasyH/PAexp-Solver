#!/bin/bash
echo "begin test..."

cd all
    cd head
    ./runz3.sh > z3-result 
    ./runcvc4.sh > cvc4-result
    cd ..
    cd head-tail
    ./runz3.sh > z3-result 
    ./runcvc4.sh > cvc4-result
    cd ..
    cd tail
    ./runz3.sh > z3-result 
    ./runcvc4.sh > cvc4-result
    cd ..
cd ..

cd flatten
    cd head
    ./runz3.sh > z3-result 
    ./runcvc4.sh > cvc4-result
    cd ..
    cd head-tail
    ./runz3.sh > z3-result 
    ./runcvc4.sh > cvc4-result
    cd ..
    cd tail
    ./runz3.sh > z3-result 
    ./runcvc4.sh > cvc4-result
    cd ..
cd ..