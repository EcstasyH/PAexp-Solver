#!/bin/bash
echo "begin test using Z3 ..."

count=1
while(( $count<= 100 ))
do
    START=$(date +%s)
    # do something
    # start your script work here
    echo $count
    cvc4 test$count -L smt --tlimit=60000 --fmf-fun --produce-models
    let "count++"
    # your logic ends here
    END=$(date +%s)
    DIFF=$(( $END - $START ))
    echo "It took $DIFF seconds"
done