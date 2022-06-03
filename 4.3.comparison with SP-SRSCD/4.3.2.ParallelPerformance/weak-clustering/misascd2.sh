#!/bin/sh
#SBATCH -J 2p-1d-4clu
#SBATCH -o %j-%x.out
#SBATCH -p normal
#SBATCH -t 10:00:00
#SBATCH -N 1
#SBATCH --cpus-per-task=1
#SBATCH --ntasks-per-node=2

mpirun -n 2 ../../src/misascd configure2.in
mpirun -n 2 ../../src/misascd configure2.in
mpirun -n 2 ../../src/misascd configure2.in
