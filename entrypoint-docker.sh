#!/bin/sh -l

echo "Build Foder For Documentation: $1"
# Change folder
cd $1
# Build Docs
make 

time=$(date)
echo "::set-output name=time::$time"