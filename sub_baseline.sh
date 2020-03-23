#!/bin/bash
#$ -o qsub_output
#$ -S /bin/bash
#$ -j y
#$ -cwd
#$ -l gpu=1
#$ -l h_vmem=60G
#$ -q gpu.24h.q
source /scratch_net/biwidl214/jonatank/anaconda3/etc/profile.d/conda.sh
conda activate JKMT
python -u train_unet.py --model_name AUG_10_0_ --config conf.yaml --prop_subj 0.05 --aug 1

python -u train_unet.py --model_name AUG_10_6_ --config conf.yaml --prop_subj 0.05 --aug 1

python -u train_unet.py --model_name AUG_10_7_ --config conf.yaml --prop_subj 0.05 --aug 1

python -u train_unet.py --model_name AUG_10_8_ --config conf.yaml --prop_subj 0.05 --aug 1

python -u train_unet.py --model_name AUG_10_9_ --config conf.yaml --prop_subj 0.05 --aug 1





