rule heatmap:
    input:
        gene_expression=DATADIR + "gene_ex.csv"
    output:
        heatmap_filename="results/heatmap.jpg"
    script:
        "../scripts/heatmap.R"
