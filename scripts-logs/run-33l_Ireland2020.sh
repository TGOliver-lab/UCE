#!/bin/bash
#SBATCH -e slurm.err
#SBATCH -p scavenger-gpu
#SBATCH --gres=gpu:a6000:1 # 48 GB GPU RAM
#SBATCH -c 6
#SBATCH --mem=50G

python eval_single_anndata.py \
--adata_path /hpc/group/oliverlab/adata_objects/Ireland2020_exvivo_timeseries.h5ad \
--dir /work/drt42/UCE_output/ \
--species mouse --nlayers 33 \
--model_loc /hpc/group/oliverlab/UCE/33l_8ep_1024t_1280.torch \
--batch_size 40 \
--protein_embeddings_dir /hpc/group/oliverlab/UCE/protein_embeddings
