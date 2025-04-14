#!/bin/bash
#SBATCH -e slurm.err
#SBATCH -p scavenger-gpu
#SBATCH --gres=gpu:a6000:1 # 48 GB GPU RAM
#SBATCH -c 4
#SBATCH --mem=80G

python eval_single_anndata.py \
--adata_path /hpc/group/oliverlab/adata_objects/chan_human_sclc_htan.h5ad \
--dir /work/drt42/UCE_output/ \
--species human --nlayers 33 \
--model_loc /hpc/group/oliverlab/UCE/33l_8ep_1024t_1280.torch \
--batch_size 20 \
--protein_embeddings_dir /hpc/group/oliverlab/UCE/protein_embeddings
