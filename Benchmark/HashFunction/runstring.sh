#!/bin/bash
echo "begin test..."

cd all
    cd head
    ./runz3str.sh > z3str-result 
    cd ..
    cd head-tail
    ./runz3str.sh > z3str-result
    cd ..
    cd tail
    ./runz3str.sh > z3str-result 
    cd ..
cd ..

cd flatten
    cd head-tail
    ./runz3str.sh > z3str-result 
    ./runcvc4.sh > cvc4-result
    cd ..
    cd tail
    ./runz3str.sh > z3str-result 
    ./runcvc4.sh > cvc4-result
    cd ..
cd ..