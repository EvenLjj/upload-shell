#!/bin/bash
nodes=(slave1 slave2)
num=${#nodes[@]}

file=$1
dst_path=$2

for((i=0;i<${num};i++));do
    scp -r ${file} ${nodes[i]}:${dst_path};
done;

