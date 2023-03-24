rule bwa_index:
    input:
        ref=DATADIR + "reference.fa"
    output:
        flag_bwa_index=touch("results/flags/bwa_index")
    message:
        "Indexing reference fasta file '{input}' with `bwa index`"
    shell:
        "bwa index {input}"

rule bwa_align:
    input:
        ref=DATADIR + "reference.fa",
        reads=DATADIR + "{sample}.txt",
        flag_bwa_index="results/flags/bwa_index"
    threads:
        8
    output:
        aligned_sai="results/aligned/{sample}.out.sai"
    message:
        "Aligning reads from '{input.reads}' with `bwa aln`"
    shell:
        "bwa aln -I -t {threads} {input.ref} {input.reads} > {output}"

rule bwa_samse:
    input:
        ref=DATADIR + "reference.fa",
        reads=DATADIR + "{sample}.txt",
        aligned_sai="results/aligned/{sample}.out.sai"
    output:
        aligned_sam="results/aligned/{sample}.out.sam"
    message:
        "Converting '{input.aligned_sai}' to .sam format with `bwa_samse`"
    shell:
        "bwa samse {input.ref} {input.aligned_sai} {input.reads} > {output}"
