#!/bin/bash
#$ -o qsub_output
#$ -S /bin/bash
#$ -j y
#$ -cwd
#$ -l gpu=1
#$ -l h_vmem=40G
#$ -q gpu.24h.q
source /scratch_net/biwidl214/jonatank/anaconda3/etc/profile.d/conda.sh
conda activate JKMT
python -u train_unet.py --model_name AUG_1_0_ --config conf.yaml --prop_subj 0.005 --aug 1

python -u train_unet.py --model_name AUG_1_1_ --config conf.yaml --prop_subj 0.005 --aug 1

python -u train_unet.py --model_name AUG_1_2_ --config conf.yaml --prop_subj 0.005 --aug 1

python -u train_unet.py --model_name AUG_1_3_ --config conf.yaml --prop_subj 0.005 --aug 1

python -u train_unet.py --model_name AUG_1_4_ --config conf.yaml --prop_subj 0.005 --aug 1

python -u train_unet.py --model_name AUG_1_5_ --config conf.yaml --prop_subj 0.005 --aug 1

python -u train_unet.py --model_name AUG_1_6_ --config conf.yaml --prop_subj 0.005 --aug 1

python -u train_unet.py --model_name AUG_1_7_ --config conf.yaml --prop_subj 0.005 --aug 1

python -u train_unet.py --model_name AUG_1_8_ --config conf.yaml --prop_subj 0.005 --aug 1

python -u train_unet.py --model_name AUG_1_9_ --config conf.yaml --prop_subj 0.005 --aug 1



