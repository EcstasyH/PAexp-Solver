#!/bin/bash
echo "--------------------------------"

echo "begin string test Using Z3 ..."
START=$(date +%s)
z3 -smt2 string -T:120
END=$(date +%s)
DIFF=$(( $END - $START ))
echo "Z3 took $DIFF seconds"

echo "--------------------------------"

echo "begin string test Using CVC4 ..."
START=$(date +%s)
cvc4 string -L smt --tlimit=120000 --strings-exp   
END=$(date +%s)
DIFF=$(( $END - $START ))
echo "CVC4 took $DIFF seconds"
echo "--------------------------------"
