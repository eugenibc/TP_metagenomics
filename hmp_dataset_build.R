#####
## 21/01/2026: Build the hmp_dataset.Rda object to do the TP_Part2 without need of docker
#####
library(curatedMetagenomicData)
library(phyloseq)
library(mia)
library(reshape2)

data <- curatedMetagenomicData(
  "HMP_2012.relative_abundance",
  dryrun = FALSE
)
##build a derived phyloseq object
ps <- makePhyloseqFromTreeSummarizedExperiment(data$`2021-03-31.HMP_2012.relative_abundance`, assay.type = "relative_abundance")
##relative abundance transformation
ps.rel <- transform_sample_counts(ps, function(x) x / sum(x))
ps.rel.melt <- psmelt(ps.rel)

hmp <- reshape2::dcast(data = ps.rel.melt, formula = OTU~Sample, value.var = "Abundance")
rownames(hmp) <- hmp$OTU ; hmp <- hmp[,-1]
hmp.metadata <- unique(ps.rel.melt[,-match(c("OTU","Abundance","phylum","class","order","family","genus","species"), colnames(ps.rel.melt))])
rownames(hmp.metadata) <- hmp.metadata$Sample
hmp.taxo <- unique(ps.rel.melt[,c("OTU","phylum","class","order","family","genus","species")])
rownames(hmp.taxo) <- hmp.taxo$OTU
hmp.taxo <- hmp.taxo[,-1]
hmp.melted <- ps.rel.melt

save(hmp, hmp.metadata, hmp.taxo, hmp.melted, file="~/hmp_dataset.Rda")
