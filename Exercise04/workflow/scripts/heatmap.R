# Script to create heatmap of yeast gene expression data

# Specify input file
gene_expression_csv <- snakemake@input[["gene_expression"]]
# Specify output filename
heatmap_filename <- snakemake@output[["heatmap_filename"]]

# Read expression data and convert to matrix
gene_expression <- read.csv(gene_expression_csv, check.names=FALSE, row.names=1)
gene_expression_matrix <- as.matrix(gene_expression)

# Create heatmap and save to jpg
jpeg(file=heatmap_filename)
heatmap(gene_expression_matrix, main="Heatmap of yeast gene expression data", ylab="Gene", xlab="Time")
dev.off()

# Exit
q()
