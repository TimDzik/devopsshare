#! /bin/bash

for x in {1..30}; do
    dizaine=$(( ($x/10)%10 ))
    unite=$(($x%10))
    mkdir ./devopsshared_$dizaine$unite
    for y in {1..5}; do
      touch ./devopsshared_$dizaine$unite/devopsshared_$dizaine$unite\_file$y.txt
    done
done
