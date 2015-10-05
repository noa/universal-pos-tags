#! /usr/bin/env bash

set -e

OUT=conll2006_uni

python3 convert_tags.py sv-talbanken data/swedish/talbanken05/train/swedish_talbanken05_train.conll $OUT/swedish_train.conll
python3 convert_tags.py sv-talbanken data/swedish/talbanken05/test/swedish_talbanken05_test.conll $OUT/swedish_test.conll

# This data includes phrases which are tagged e.g. N_N for a compound noun
#python3 convert_tags.py nl-alpino data/dutch/alpino/train/dutch_alpino_train.conll $OUT/dutch_train.conll
#python3 convert_tags.py nl-alpino data/dutch/alpino/test/dutch_alpino_test.conll $OUT/dutch_test.conll

python3 convert_tags.py pt-bosque data/portuguese/bosque/treebank/portuguese_bosque_train.conll $OUT/portuguese_train.conll
python3 convert_tags.py pt-bosque data/portuguese/bosque/test/portuguese_bosque_test.conll $OUT/portuguese_test.conll

python3 convert_tags.py da-ddt data/danish/ddt/train/danish_ddt_train.conll $OUT/danish_train.conll
python3 convert_tags.py da-ddt data/danish/ddt/test/danish_ddt_test.conll $OUT/danish_test.conll

# eof
