#! /usr/bin/env python3

import argparse
from universal_tags import *

parser = argparse.ArgumentParser()
parser.add_argument('tagset') # e.g. 'en-ptb'
parser.add_argument('input')
parser.add_argument('output')
parser.add_argument('--tag-col', type=int, default=4)
parser.add_argument('--num-col', type=int, default=10)
parser.add_argument('--delim', default='\t')
args = parser.parse_args()

with open(args.output, 'w') as ouf:
    with open(args.input) as f:
        print('reading: ' + args.input)
        for line in f:
            tokens = line.rstrip().split()
            if len(tokens) == args.num_col:
                tag = tokens[args.tag_col]
                #print('tag: ' + tag)
                uni_tag = convert(args.tagset, tag)
                tokens[args.tag_col] = uni_tag
                ouf.write(args.delim.join(tokens)+'\n')
            else:
                ouf.write(line)

# eof
