#!/bin/sh
#SBATCH -J 4p-1d-4clu
#SBATCH -o %j-%x.out
#SBATCH -p normal
#SBATCH -t 10:00:00
#SBATCH -N 1
#SBATCH --cpus-per-task=1
#SBATCH --ntasks-per-node=4

mpirun -n 4 ../../src/misascd configure4.in
mpirun -n 4 ../../src/misascd configure4.in
mpirun -n 4 ../../src/misascd configure4.in
