options(repos = c(CRAN = "https://cloud.r-project.org"))

install.packages("BiocManager")

BiocManager::install(
  c(
    "CuratedMetagenomicData",
    "phyloseq",
    "vegan",
    "microbiome"
  ),
  ask = FALSE,
  update = FALSE
)

install.packages("tidyverse")
