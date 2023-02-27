configfile: "config/config.yaml"
merge_url = config["merge-url"]

rule download:
    output:
        temp("data/{sample}.bam")
    message:
        "getting data file '{output}' from '{merge_url}{wildcards.sample}.bam'"
    shell:
        "wget {merge_url}{wildcards.sample}.bam -O {output}"

rule merge:
    input:
         expand("data/{sample}.bam", sample=config["samples"])
    output:
        "results/merged_results.bam"
    message:
        "executing `samtools merge` on the following files: {input}"
    shell:
        "samtools merge {output} {input}"
