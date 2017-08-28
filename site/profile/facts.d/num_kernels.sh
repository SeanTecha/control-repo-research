#!/bin/bash
num_kernels=$(rpm -qa | egrep kernel-'[0-9]' | wc -l)
echo "num_kernels=$num_kernels"