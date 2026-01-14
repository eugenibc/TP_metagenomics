FROM bioconductor/bioconductor:3.18

LABEL description="TP M2 Bioinformatique – Écologie microbienne"

# Installer RStudio Server
RUN apt-get update && apt-get install -y \
    rstudio-server \
    && rm -rf /var/lib/apt/lists/*

# Installer tidyverse (CRAN)
RUN Rscript -e "install.packages('tidyverse','Hmisc','reshape', repos='https://cloud.r-project.org')"

# Installer packages Bioconductor nécessaires
RUN Rscript -e "BiocManager::install('curatedMetagenomicData', ask=FALSE, update=FALSE)"
RUN Rscript -e "BiocManager::install(c('phyloseq','vegan','microbiome','mia'), ask=FALSE, update=FALSE)"

# 🔑 Rendre les librairies accessibles à rstudio
RUN chown -R rstudio:rstudio /usr/local/lib/R/site-library

# Forcer le chemin des librairies R
ENV R_LIBS_SITE=/usr/local/lib/R/site-library

# Copier le TP
COPY TP_microbiome_M2.Rmd /home/rstudio/

WORKDIR /home/rstudio

ENV USER=rstudio
ENV PASSWORD=tp
