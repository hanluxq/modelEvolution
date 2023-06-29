#!/bin/bash

DATA_DIR=
MODEL_TYPE=
MODEL_NAME_OR_PATH=
OUTPUT_DIR=
LABEL=

CUDA_VISIBLE_DEVICES='1'
--data_dir
datasets/conll2003/hl
--model_type bert
--model_name_or_path bert-base-cased
--output_dir
pretrained_model/hl
--labels
datasets/labels.txt
--overwrite_output_dir
--do_train
--do_eval
--evaluate_during_training
--adv_training
fgm
--num_train_epochs
3
--max_seq_length
128
--logging_steps
0.2
--per_gpu_train_batch_size
16
--per_gpu_eval_batch_size
16
--learning_rate
5e-5
--bert_lr
5e-5
--classifier_lr
5e-5