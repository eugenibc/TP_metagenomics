FROM rocker/bioconductor:3.18

LABEL description="TP M2 Bioinformatique – Écologie microbienne"

# CRAN packages
RUN Rscript -e "install.packages('tidyverse', repos='https://cloud.r-project.org')"

# Bioconductor (sans CuratedMetagenomicData)
RUN Rscript -e "BiocManager::install(c('phyloseq','vegan','microbiome'), ask=FALSE, update=FALSE)"

# Copier le TP
COPY TP_microbiome_M2.Rmd /home/rstudio/

WORKDIR /home/rstudio
ENV PASSWORD=tp
