#!/bin/bash
#SBATCH --time=00:30:00
#SBATCH --nodes=2 --ntasks-per-node=28
#SBATCH --job-name=parallelSlurm
#SBATCH --account=PZS0712

#slurm starts job in working DIR
cd $SLURM_SUBMIT_DIR

#software licenses syntax
#use: SBATCH --licenses={software flag}@osc:N
#use: SBATCH --licenses=abaqus@osc:5


#set up software environment
module load intel

##Run your software commands
#compile
mpicc -O2 mpi_example.c -o helloSlurm

#execute
srun helloSlurm > helloSlurm_results

sleep 300

