rule samtools_view:
    input:
        aligned_sam="results/aligned/{sample}.out.sam"
    output:
        aligned_bam="results/aligned/{sample}.out.bam"
    message:
        "Converting aligned sam file '{input}' to .bam format using `samtools view`"
    shell:
        "samtools view -S -b {input.aligned_sam} > {output}"

rule samtools_sort:
    input:
        aligned_bam="results/aligned/{sample}.out.bam"
    output:
        sorted="results/sorted/{sample}.out.sorted.bam"
    message:
        "Sorting reads in '{input}' with `samtools sort`"
    shell:
        "samtools sort {input.aligned_bam} -o {output}"
