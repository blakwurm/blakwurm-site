#!/bin/bash

echo copying to blakwurm.github.com repo

rm -rf ../blakwurm.github.com/*
cp resources/public ../blakwurm.github.com

echo commiting blakwurm.github.com
cd -r ../blakwurm.github.com
git add .
git commit -m %2
git push

cd ../blakwurm
