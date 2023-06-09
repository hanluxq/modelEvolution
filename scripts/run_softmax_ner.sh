#!/bin/sh

DATA_DIR='../datasets/conll2003/word'
MODEL_TYPE='bert'
MODEL_NAME_OR_PATH='bert-base-cased'
OUTPUT_DIR='pretrained_model/hl'
LABEL='../datasets/labels.txt'

CUDA_VISIBLE_DEVICES='0' python ../examples/run_softmax_ner.py \
--data_dir $DATA_DIR \
--model_type $MODEL_TYPE \
--model_name_or_path $MODEL_NAME_OR_PATH \
--output_dir $OUTPUT_DIR \
--labels $LABEL \
--overwrite_output_dir \
--do_train \
--do_eval \
--evaluate_during_training \
--adv_training fgm \
--num_train_epochs 200 \
--max_seq_length 128 \
--logging_steps 0.2 \
--per_gpu_train_batch_size 16 \
--per_gpu_eval_batch_size 16 \
--learning_rate 3e-5 \
--bert_lr 5e-5 \
--classifier_lr  5e-5 \
