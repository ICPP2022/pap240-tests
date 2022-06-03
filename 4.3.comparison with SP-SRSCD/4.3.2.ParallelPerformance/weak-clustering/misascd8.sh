#!/bin/sh
#SBATCH -J 8p-1d-4clu
#SBATCH -o %j-%x.out
#SBATCH -p normal
#SBATCH -t 10:00:00
#SBATCH -N 1
#SBATCH --cpus-per-task=1
#SBATCH --ntasks-per-node=8

mpirun -n 8 ../../src/misascd configure8.in
mpirun -n 8 ../../src/misascd configure8.in
mpirun -n 8 ../../src/misascd configure8.in
