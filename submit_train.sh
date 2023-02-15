#!/bin/bash -x
#SBATCH --account=deepacf
#SBATCH --nodes=1
#SBATCH --output=logs/gpu-out.%j
#SBATCH --error=logs/gpu-err.%j
#SBATCH --time=02:00:00
#SBATCH --partition=develgpus
#SBATCH --gres=gpu:4

module purge
module load Stages/2023
module load cuDNN/8.6.0.163-CUDA-11.7
module load GCC/11.3.0
module load Emacs/28.2
module unload Python/3.10.4
conda activate bert-enn
module list

srun ./run_juwels.sh sst 0


wait
