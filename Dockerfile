FROM rocker/bioconductor:3.18

LABEL description="TP M2 Bioinformatique – Écologie microbienne"

# Installer RStudio Server
RUN apt-get update && apt-get install -y \
    rstudio-server \
    && rm -rf /var/lib/apt/lists/*

# Installer tidyverse (CRAN)
RUN Rscript -e "install.packages('tidyverse', repos='https://cloud.r-project.org')"

# Installer packages Bioconductor nécessaires
RUN Rscript -e "BiocManager::install(c('CuratedMetagenomicData','phyloseq','vegan','microbiome'), ask=FALSE, update=FALSE)"

# Copier le TP
COPY TP_microbiome_M2.Rmd /home/rstudio/

WORKDIR /home/rstudio

# Identifiants RStudio
ENV USER=rstudio
ENV PASSWORD=tp
