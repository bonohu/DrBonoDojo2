#!/bin/bash
p=8
for drr in */*.sra; do
 drr=`basename $drr`; echo ${drr%.*}
 salmon quant -l A -i silkworm -1 ${drr}_1.fastq.gz -2 ${drr}_2.fastq.gz -p $p -o output/$drr
done
