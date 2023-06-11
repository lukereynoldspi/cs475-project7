#!/bin/bash
module load openmpi
mpic++ fourier.cpp -o fourier -lm

for b in 1 2 4 8
do
        mpiexec -np $b fourier
done