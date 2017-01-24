#!/bin/sh
#
for i in (seq 1 5)
do  
   dsl_pipe G997_LineIntegralStatusGet 0 0 | grep 'SNR' >> SNR.txt
   dsl_pipe G997_LineIntegralStatusGet 0 1 | grep 'SNR' >> SNR.txt
   dsl_pipe g997csg 0 0 0 | grep 'ActualNetDataRate' >> SNR.txt
   dsl_pipe g997csg 0 0 1 | grep 'ActualNetDataRate' >> SNR.txt
   echo "Done iteration $i"
   sleep 2
done
