
#! /bin/bash

REPOS="hyperscript hypertabs hypercrop hyperlightbox hyperprogress hyperfile"
AUTHORS="dominictarr mixmix cel"

for R in $REPOS; do
  for A in $AUTHORS; do
    echo npm owner add $A $R
    npm owner add $A $R
  done
done
