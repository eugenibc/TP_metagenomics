FROM rocker/rstudio:4.3.2

LABEL description="TP M2 Bioinformatique – Écologie microbienne"

# Dépendances système nécessaires aux packages Bioconductor
RUN apt-get update && apt-get install -y \
    libxml2-dev \
    libssl-dev \
    libcurl4-openssl-dev \
    libgit2-dev \
    libharfbuzz-dev \
    libfribidi-dev \
    libfreetype6-dev \
    libpng-dev \
    libtiff5-dev \
    libjpeg-dev \
    libfontconfig1-dev \
    libglpk-dev \
    libgsl-dev \
    && rm -rf /var/lib/apt/lists/*

# Installation des packages R
COPY install_packages.R /tmp/install_packages.R
RUN Rscript /tmp/install_packages.R

# Copier le TP dans le home RStudio
COPY TP_microbiome_M2.Rmd /home/rstudio/

WORKDIR /home/rstudio
