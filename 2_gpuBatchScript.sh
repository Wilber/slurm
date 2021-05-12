#!/bin/bash
#SBATCH --time=00:05:00
#SBATCH --nodes=1 --ntasks-per-node=14  --gpus-per-node=1
#SBATCH --job-name=partialGPUjob
#SBATCH --account=PZS1010


cd $SLURM_SUBMIT_DIR

#Load cuda module for Nvidia libraries
module load cuda
module load R/3.6.1-gnu9.1

#output goes to the slurm job output file
echo -e "This is a partial node GPU job:"
scontrol show node $SLURMD_NODENAME


#Run an R script for matrix multiplication
Rscript  gpuCode.R

sleep 300
