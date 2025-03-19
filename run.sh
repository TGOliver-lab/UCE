#!/bin/bash
#SBATCH -e slurm.err
#SBATCH -p scavenger-gpu
#SBATCH --gres=gpu:a6000:1 # 48 GB GPU RAM
#SBATCH -c 6
#SBATCH --mem=50G

python eval_single_anndata.py --adata_path /hpc/group/oliverlab/lung_atlas/Lin_2024_hillock_QC.h5ad --dir /hpc/home/drt42/work-drt42/UCE/ --species mouse --model_loc /hpc/group/oliverlab/UCE/4layer_model.torch --batch_size 50

