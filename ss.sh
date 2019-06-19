shortstack_path=/home/juan/Desktop/juan/bio/mrcv/sw/ShortStack
data_path=/home/juan/Desktop/juan/bio/mirna_mite/data/sRNASeq
genome_path=/home/juan/Desktop/juan/bio/data/IWGSC/42/Triticum_aestivum.IWGSC.dna.toplevel.fa
res_path=/home/juan/Desktop/juan/bio/RdDM_MRCV/data/ss
locifile_path=/home/juan/Desktop/juan/bio/mirna_mite/data/mitesall.locifile.csv
#all sRNA and loci
cd $shortstack_path

./ShortStack --readfile \
    $data_path/21dpiR1C.trimmed.fq.gz \
    $data_path/21dpiR3C.trimmed.fq.gz \
    $data_path/21dpiR1T.trimmed.fq.gz \
    $data_path/21dpiR3T.trimmed.fq.gz \
    --genomefile $genome_path \
    --outdir $res_path/A \
    --sort_mem 20G \
--bowtie_m all --nohp

./ShortStack --readfile \
    $data_path/21dpiR1C.trimmed.fq.gz \
    $data_path/21dpiR3C.trimmed.fq.gz \
    --genomefile $genome_path \
    --outdir $res_path/C \
    --sort_mem 20G \
--bowtie_m all --nohp

./ShortStack --readfile \
    $data_path/21dpiR1T.trimmed.fq.gz \
    $data_path/21dpiR3T.trimmed.fq.gz \
    --genomefile $genome_path \
    --outdir $res_path/T \
    --sort_mem 20G \
--bowtie_m all --nohp
