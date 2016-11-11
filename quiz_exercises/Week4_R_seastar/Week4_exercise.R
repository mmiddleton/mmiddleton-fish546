# Run this the first time to install DESeq2
#source("http://bioconductor.org/biocLite.R")
#biocLite("DESeq2")

# Set the working directory
setwd("~/R_seastar")

# Start
library(DESeq2)

Loading required package: S4Vectors
Loading required package: stats4
Loading required package: BiocGenerics
Loading required package: parallel

Attaching package: 'BiocGenerics'

The following objects are masked from 'package:parallel':
  
  clusterApply, clusterApplyLB, clusterCall, clusterEvalQ,
clusterExport, clusterMap, parApply, parCapply, parLapply,
parLapplyLB, parRapply, parSapply, parSapplyLB

The following objects are masked from 'package:stats':
  
  IQR, mad, xtabs

The following objects are masked from 'package:base':
  
  anyDuplicated, append, as.data.frame, cbind, colnames, do.call,
duplicated, eval, evalq, Filter, Find, get, grep, grepl, intersect,
is.unsorted, lapply, lengths, Map, mapply, match, mget, order,
paste, pmax, pmax.int, pmin, pmin.int, Position, rank, rbind,
Reduce, rownames, sapply, setdiff, sort, table, tapply, union,
unique, unsplit, which, which.max, which.min


Attaching package: 'S4Vectors'

The following objects are masked from 'package:base':
  
  colMeans, colSums, expand.grid, rowMeans, rowSums

Loading required package: IRanges
Loading required package: GenomicRanges
Loading required package: GenomeInfoDb
Loading required package: SummarizedExperiment
Loading required package: Biobase
Welcome to Bioconductor

Vignettes contain introductory material; view with
'browseVignettes()'. To cite Bioconductor, see
'citation("Biobase")', and for packages 'citation("pkgname")'.

# Tell R which data to use
data <- read.table("Phel_countdata.txt", header = T, sep = "\t")
rownames(data) <- data$Feature
data <- data[,-1]

# Build Objects
# Specify which columns are in which groups
deseq2.colData <- data.frame(condition=factor(c(rep("Treated", 3), rep("Control", 3))), 
                             type=factor(rep("single-read", 6)))
rownames(deseq2.colData) <- colnames(data)
deseq2.dds <- DESeqDataSetFromMatrix(countData = data,
                                     colData = deseq2.colData, 
                                     design = ~ condition)
# Run Analysis
deseq2.dds <- DESeq(deseq2.dds)
deseq2.res <- results(deseq2.dds)
deseq2.res <- deseq2.res[order(rownames(deseq2.res)), ]

estimating size factors
estimating dispersions
gene-wise dispersion estimates
mean-dispersion relationship
final dispersion estimates
fitting model and testing

#Check output
head(deseq2.res)

log2 fold change (MAP): condition Treated vs Control 
Wald test p-value: condition Treated vs Control 
DataFrame with 6 rows and 6 columns
baseMean log2FoldChange     lfcSE        stat       pvalue
<numeric>      <numeric> <numeric>   <numeric>    <numeric>
  Phel_contig_1      114.07829     1.69961840 1.0100369  1.68272906 9.242755e-02
Phel_contig_10    5492.70960     7.86315045 0.7971970  9.86349715 5.992508e-23
Phel_contig_100    786.08744     0.01617676 0.3333508  0.04852773 9.612957e-01
Phel_contig_1000  5406.89996     0.21199831 0.3564274  0.59478682 5.519860e-01
Phel_contig_10000   24.76992    -0.20247224 0.6508602 -0.31108406 7.557367e-01
Phel_contig_10001  136.22441     1.62245163 0.6023366  2.69359627 7.068573e-03
padj
<numeric>
  Phel_contig_1     2.634828e-01
Phel_contig_10    3.337238e-20
Phel_contig_100   9.841732e-01
Phel_contig_1000  7.618283e-01
Phel_contig_10000 8.874021e-01
Phel_contig_10001 4.270173e-02

# Count number of hits with adjusted p-value less then 0.05
dim(deseq2.res[!is.na(deseq2.res$padj) & deseq2.res$padj <= 0.05, ])

[1] 3672    6
# Note: this differs from what is in the jupyter notebook as the output, version of R possibly?
# Continue on to doing the plot and see how different that makes it look

tmp <- deseq2.res

# The main plot
plot(tmp$baseMean, tmp$log2FoldChange, pch=20, cex=0.45, ylim=c(-3, 3), log="x", col="black",
     main="DEG Virus Exposure  (pval <= 0.05)",
     xlab="mean of normalized counts",
     ylab="Log2 Fold Change")

# Getting the significant points and plotting them again so they're a different color
tmp.sig <- deseq2.res[!is.na(deseq2.res$padj) & deseq2.res$padj <= 0.05, ]
points(tmp.sig$baseMean, tmp.sig$log2FoldChange, pch=20, cex=0.45, col="orange")

# 2 FC lines
abline(h=c(-1,1), col="green")

#Make a new file with differentially expressed contigs (no quotes in the output file)
write.table(tmp.sig, "Phel_DEGlist.tab", row.names = T, quote=F)

#Make a new file with differentially expressed contigs 
#(no quotes in the output file, make the separator a tab rather than a space)
write.table(tmp.sig, "Phel_DEGlist.tab", row.names = T, quote=F, sep="\t")
