#!/bin/bash

dataset="${1-sst}"
seed="${2-0}"

# vanilla BERT for maximum softmax scores, MC-dropout and temperature scaling
#CUDA_VISIBLE_DEVICES=0 python bert.py --dataset ${dataset} --seed ${seed}

#ENN. Below we use the Hyper-parameters in Table 5. For vanilla ENN, all the betas are set to 0.
CUDA_VISIBLE_DEVICES=0 python train_bert_enn.py --dataset ${dataset} --beta_in 0 --beta_oe 1 --beta_off 0.1 --seed ${seed} --evaluate_ood n
done
