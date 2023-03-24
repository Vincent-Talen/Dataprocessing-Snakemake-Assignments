rule samtools_index:
    input:
        filtered="results/filtered/{sample}.out.dedupe.bam"
    output:
        flag_samtools_index=touch("results/flags/samtools_index_{sample}")
    message:
        "Indexing '{input}' with `samtools index`"
    shell:
        "samtools index {input}"

rule samtools_mpileup:
    input:
        ref=DATADIR + "reference.fa",
        filtered="results/filtered/{sample}.out.dedupe.bam",
        flag_samtools_index="results/flags/samtools_index_{sample}"
    output:
        pileup="results/{sample}.out.vcf"
    message:
        "Creating final pileup of '{input}' with `samtools mpileup`"
    shell:
        "samtools mpileup -uf {input.ref} {input.filtered} | "
        "bcftools view -> {output}"
