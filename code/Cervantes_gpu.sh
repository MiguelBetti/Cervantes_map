#!/bin/env bash

#SBATCH --job-name=Cervantes_ner    
#SBATCH --partition=shared-gpu
#SBATCH --time=02:00:00
#SBATCH --mem=24GB
#SBATCH --cpus-per-task=8
#SBATCH --gres=gpu:1,VramPerGpu:24G    
#SBATCH --output=Cervantes_ner-%j.out
#SBATCH --error=Cervantes_ner-%j.err

module load Python/3.9.6

source /home/users/b/betti/flair-env/bin/activate

/home/users/b/betti/flair-env/bin/python /home/users/b/betti/Cervantes_ner/Cervantes_ner.py
