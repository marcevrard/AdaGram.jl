#!/bin/sh

INPUT_FPATH=/data/coin/CORPORA/W2V_c/PROCESSED/big/data_no_unk_tag.txt
# INPUT_FPATH=/data/coin/CORPORA/W2V_c/PROCESSED/enwiki_proc/data.txt
WV_FPATH=model/big-adagram-vectors
VOC_INPUT_FPATH=data/big-voc2.txt

julia train.jl --min-freq 100 --window 4 --workers 7 --min-freq 100 --prototypes 10 --subsample 1e-5 \
    ${INPUT_FPATH}  ${VOC_INPUT_FPATH}  ${WV_FPATH}

