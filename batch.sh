#!/bin/bash -l
#SBATCH --job-name=my_custom_job
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --output my_custom_job-job_%j.out
#SBATCH --error my_custom_job-job_%j.err
#SBATCH --partition=standard

# Bind your OpenMP threads
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

# Start my application
srun my_custom_job

