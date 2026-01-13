options(
  repos = c(
    CRAN = "https://cloud.r-project.org"
  )
)

message("=== Installation BiocManager ===")
install.packages("BiocManager", quiet = FALSE)

message("=== Version R ===")
print(R.version.string)

message("=== Initialisation Bioconductor ===")
BiocManager::install(version = "3.18", ask = FALSE)

message("=== Installation packages Bioconductor ===")
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

message("=== Installation tidyverse ===")
install.packages("tidyverse", dependencies = TRUE)

message("=== Installation terminée ===")
