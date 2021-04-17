#!/bin/bash
#Joseph Salazar
#salazjos@oregonstate.edu
#project2bash.sh
#bash script for running openMPproject2.cpp

#number of threads
for t in 1 2 4 6 8
do
    echo NUMT = $t
    #number of nodes
    for s in 100 500 1000 1500 2000 2500 3000 3500 
    do
        echo NUMNODES = $t
        g++ -DNUMNODES=$s -DNUMT=$t openMPproject2.cpp -o prog2 -lm -fopenmp
        ./prog2
    done
done

    