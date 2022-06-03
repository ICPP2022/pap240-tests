#!/bin/sh
#SBATCH -J 64p-1d-4clu
#SBATCH -o %j-%x.out
#SBATCH -p normal
#SBATCH -t 10:00:00
#SBATCH -N 2
#SBATCH --cpus-per-task=1
#SBATCH --ntasks-per-node=32

mpirun -n 64 ../../src/misascd configure64.in
mpirun -n 64 ../../src/misascd configure64.in
mpirun -n 64 ../../src/misascd configure64.in
