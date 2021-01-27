#!/bin/bash
#SBATCH --job-name=Rmpi
#SBATCH --time=00:30:00
#SBATCH --nodes=2
#SBATCH	--ntasks-per-node=28
#SBATCH -A PZS0712

set echo

#
cd $SLURM_SUBMIT_DIR

ml gnu/9.1.0
ml openmpi/1.10.7
ml mkl/2019.0.5
ml R/4.0.2

sleep 300
# parallel R: submit job with one MPI parent process
mpirun -np 1 R --slave < Rmpi.R
