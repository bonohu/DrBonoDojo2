
#!/bin/bash
p=8
for drr in */*.sra; do
 drr=`basename $drr`; drr2=${drr%.*}
 echo $drr2
 docker run -it -v `pwd`:/salmon combinelab/salmon:1.10.1 salmon quant -l A -i /salmon/silkworm -1 /salmon/${drr2}_1.fastq.gz -2 /salmon/${drr2}_2.fastq.gz -p $p -o /salmon/output/${drr2}
done

