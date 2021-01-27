#!/bin/bash
#SBATCH --time=00:05:00
#SBATCH --nodes=1 --ntasks-per-node=14  --gpus-per-node=1
#SBATCH --job-name=partialGPUjob
#SBATCH --account=PZS0712


cd $SLURM_SUBMIT_DIR

#Load cuda module for Nvidia libraries
module load cuda

#output goes to the slurm job output file
echo -e "This is a partial node GPU job:"
scontrol show node $SLURMD_NODENAME

sleep 300
