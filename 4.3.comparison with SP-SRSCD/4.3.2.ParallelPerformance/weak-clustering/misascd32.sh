#!/bin/sh
#SBATCH -J 32p-1d-4clu
#SBATCH -o %j-%x.out
#SBATCH -p normal
#SBATCH -t 10:00:00
#SBATCH -N 1
#SBATCH --cpus-per-task=1
#SBATCH --ntasks-per-node=32

mpirun -n 32 ../../src/misascd configure32.in
mpirun -n 32 ../../src/misascd configure32.in
mpirun -n 32 ../../src/misascd configure32.in
