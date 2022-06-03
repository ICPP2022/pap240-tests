#!/bin/sh
#SBATCH -J 16p-1d-4clu
#SBATCH -o %j-%x.out
#SBATCH -p normal
#SBATCH -t 10:00:00
#SBATCH -N 1
#SBATCH --cpus-per-task=1
#SBATCH --ntasks-per-node=16

mpirun -n 16 ../../src/misascd configure16.in
mpirun -n 16 ../../src/misascd configure16.in
mpirun -n 16 ../../src/misascd configure16.in
