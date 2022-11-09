# Protein Sequence in R

# install 'sequence in R' Package
install.packages('seqinr')
library('seqinr')

# read fasta file
egfr <- read.fasta(file = "fasta/P00533.fasta")
erbb2 <- read.fasta(file = "fasta/P04626.fasta")

# protein sequence
egfr_seq <- egfr[[1]]
erbb2_seq <- erbb2[[1]]

# check sequence length
length(egfr_seq)
length(erbb2_seq)

# dot plot
dotPlot(egfr_seq,erbb2_seq, main="EGFR and ERBB2 Comparison")
# add line
abline(a=0,b=1,col="red",lty=6)

# codon table
tablecode()


### CDK4 vs CDK6
cdk4 <- read.fasta(file = "fasta/P11802.fasta")
cdk6 <- read.fasta(file = "fasta/Q00534.fasta")
cdk4_seq <- cdk4[[1]]
cdk6_seq <- cdk6[[1]]
length(cdk4_seq)
length(cdk6_seq)
dotPlot(cdk4_seq,cdk6_seq, main="CDK4 vs CDK6")

###
par(mfrow=c(1,2))
dotPlot(egfr_seq,erbb2_seq, main="EGFR vs ERBB2")
abline(a=0,b=1,col="red",lty=6)
dotPlot(cdk4_seq,cdk6_seq, main="CDK4 vs CDK6")
abline(a=0,b=1,col="red",lty=6)
par(mfrow=c(1,1))

