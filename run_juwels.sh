#!/bin/bash

dataset="${1-sst}"
seed="${2-0}"

# vanilla BERT for maximum softmax scores, MC-dropout and temperature scaling
CUDA_VISIBLE_DEVICES=0 python bert.py --dataset ${dataset} --seed ${seed}

done
