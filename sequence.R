# Protein Sequence in R

# install 'sequence in R' Package
install.packages('seqinr')
library('seqinr')

# read fasta file
egfr <- read.fasta(file = "P00533.fasta")
erbb2 <- read.fasta(file = "P04626.fasta")

# protein sequence
egfr_seq <- egfr[[1]]
erbb2_seq <- erbb2[[1]]

# check sequence length
length(egfr_seq)
length(erbb2_seq)

# dot plot
dotPlot(egfr_seq,erbb2_seq, main="EGFR and ERBB2 Comparison")

# codon table
tablecode()

