#!/bin/bash
BERT_DIR=../pretrain_model/chinese_L-12_H-768_A-12

OUTDIR=./finetuned_squad_10_6

python3.6 run_squad.py \
  --vocab_file=$BERT_DIR/vocab.txt \
  --bert_config_file=$BERT_DIR/bert_config.json \
  --do_predict=True \
  --predict_file=../ccks/json/VU_squad2.0_validate.json \
  --predict_batch_size=8 \
  --max_seq_length=512 \
  --doc_stride=128 \
  --output_dir=$OUTDIR \
  --version_2_with_negative=True
