#!/bin/bash
echo Committing this repo
git add .
git commit
git push 

echo copying to blakwurm.github.com repo

rm -rf ../blakwurm.github.com/*
cd resources/public
cp -r * ../../../blakwurm.github.com
cd ../../

echo commiting blakwurm.github.com
cd ../blakwurm.github.com
git add .
git commit -m "automated commit from https://github.com/blakwurm/blakwurm-site-builder"
git push

cd ../blakwurm
