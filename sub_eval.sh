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
python -u evaluate.py --model_name AUG_2_0_25 --config conf.yaml

python -u evaluate.py --model_name AUG_2_1_25 --config conf.yaml

python -u evaluate.py --model_name AUG_2_2_25 --config conf.yaml

python -u evaluate.py --model_name AUG_2_3_25 --config conf.yaml

python -u evaluate.py --model_name AUG_2_4_25 --config conf.yaml

python -u evaluate.py --model_name AUG_2_5_25 --config conf.yaml

python -u evaluate.py --model_name AUG_2_6_25 --config conf.yaml

python -u evaluate.py --model_name AUG_2_7_25 --config conf.yaml

python -u evaluate.py --model_name AUG_2_8_25 --config conf.yaml

python -u evaluate.py --model_name AUG_2_9_25 --config conf.yaml

