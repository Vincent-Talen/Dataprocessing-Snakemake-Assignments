rule picard_filtering:
    input:
        sorted="results/sorted/{sample}.out.sorted.bam"
    output:
        metrics_file="results/filtered/{sample}.out.metrics",
        filtered="results/filtered/{sample}.out.dedupe.bam"
    message:
        "Filtering '{input}' using the Picard tool"
    params:
        picard_jar=config['picard-path']
    shell:
        """
        java -jar {params.picard_jar} MarkDuplicates \
            MAX_FILE_HANDLES_FOR_READ_ENDS_MAP=1000 \
            METRICS_FILE={output.metrics_file} \
            REMOVE_DUPLICATES=true \
            ASSUME_SORTED=true  \
            VALIDATION_STRINGENCY=LENIENT \
            INPUT={input.sorted} \
            OUTPUT={output.filtered}
        """
