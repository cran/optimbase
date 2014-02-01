#!/bin/bash

for ii in ../man/*.Rd
  do
    echo "Processing $ii"
    name=$(basename $ii .Rd)
    R CMD Rdconv -t 'latex' $ii > $name.tex
  done
  
ls -1 *.tex
