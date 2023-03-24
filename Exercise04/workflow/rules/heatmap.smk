rule heatmap:
    input:
        gene_expression=DATADIR + "gene_ex.csv"
    output:
        heatmap_filename="results/heatmap.jpg"
    message:
        "Creating gene expression heatmap for {input}"
    script:
        "../scripts/heatmap.R"
