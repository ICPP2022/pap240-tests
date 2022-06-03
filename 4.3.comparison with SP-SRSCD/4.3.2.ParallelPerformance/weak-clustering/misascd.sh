#!/bin/sh
#SBATCH -J 1p-1d-4clu
#SBATCH -o %j-%x.out
#SBATCH -p normal
#SBATCH -t 10:00:00
#SBATCH -N 1
#SBATCH --cpus-per-task=1
#SBATCH --ntasks-per-node=1

mpirun -n 1 ../../src/misascd configure.in
mpirun -n 1 ../../src/misascd configure.in
mpirun -n 1 ../../src/misascd configure.in
