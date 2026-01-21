# TP M2 Bioinformatique – Écologie microbienne

Ce TP utilise un environnement **préconfiguré** avec R et RStudio qui s'execute via docker hub
Aucune installation de packages R n’est nécessaire si vous aviez docker installé sur votre machine.

Alternativement, si vous ne pouvez installer docker sur votre machine, est possible de travailler avec un installation minimal de certains packages necessaires pour le TP_Part2 (voir dessus)

---

## 1️⃣ Prérequis pour travailler avec docker

- Docker installé sur votre machine  
👉 https://www.docker.com/products/docker-desktop

- Lancer l'environment

```bash
docker run -p 8787:8787 -e PASSWORD=tp eugenibc/tp_microbiome:2026
```

- Puis ouvrir dans un navigateur : 👉 http://localhost:8787

Login : rstudio Mot de passe : tp

Dans RStudio :

* ouvrir le fichier TP_microbiome_M2_Part1.Rmd: Analyses basiques sur dataset de reference du package Vegan (no metagenomique)
* ouvrir le fichier TP_microbiome_M2_Part2.Rmd: Analyses sur dataset metagenomique shotgun de la cohort HMP à partir des abondances MetaPhlan disponibles sur le package R curatedMetagenomicData. Cette version du TP utilise des fonctions du package R curatedMetagenomicData pour explorer et recuperer les dataset metagenomiques de differents etudes (HMP pour le TP) ainsi que des fonctions du package R phyloseq pour faire les analyses ecologiques equivalents a ces que vous auriez vu dans le TP_Part1

suivre les instructions du TP

---

## 2️⃣ Prérequis pour travailler sans docker

- Rstudio installe sur votre machine  
👉 https://posit.co/download/rstudio-desktop/

- Récupérer le TP

```bash
git clone https://github.com/eugenibc/TP_metagenomics.git
cd TP_metagenomics
```

Dans RStudio :

* ouvrir le fichier TP_microbiome_M2_Part1.Rmd: Analyses basiques sur dataset de reference du package Vegan (no metagenomique)
* ouvrir le fichier TP_microbiome_M2_Part2_noDocker.Rmd: Analyses sur dataset metagenomique shotgun de la cohort HMP à partir des abondances MetaPhlan disponibles sur le package R curatedMetagenomicData sauvegardées dans un objet R (hmp_dataset.Rda sur ). Sur cette version vous pouvez travailler avec les memes fonctions que vous auriez vu sur le TP_Part1.

suivre les instructions du TP

---

## 3️⃣ Compilation du docker à partir du repo git (optionnel)

### 1️⃣ Recuperer le TP

```bash
git clone https://github.com/eugenibc/TP_metagenomics.git
cd TP_metagenomics
```

### 2️⃣ Lancer RStudio aprés docker build
```bash
docker build -t tp_microbiome .
docker run -p 8787:8787 -e PASSWORD=tp tp_microbiome
```

### 3️⃣ Ouvrir RStudio

Dans un navigateur, ouvrir :
👉 http://localhost:8787

login : rstudio
password : tp


### 4️⃣ Ouvrir le TP

Dans RStudio :

* TP_microbiome_M2_Part1.Rmd: Analyses basiques sur dataset de reference du package Vegan (no metagenomique)
* TP_microbiome_M2_Part2.Rmd: Analyses sur dataset metagenomique shotgun de la cohort HMP à partir des abondances MetaPhlan disponibles sur le package R curatedMetagenomicData. Cette version du TP utilise des fonctions du package R curatedMetagenomicData pour explorer et recuperer les dataset metagenomiques de differents etudes (HMP pour le TP) ainsi que des fonctions du package R phyloseq pour faire les analyses ecologiques equivalents a ces que vous auriez vu dans le TP_Part1
* TP_microbiome_M2_Part2_noDocker.Rmd: Analyses sur dataset metagenomique shotgun de la cohort HMP à partir des abondances MetaPhlan disponibles sur le package R curatedMetagenomicData sauvegardées dans un objet R (hmp_dataset.Rda sur ). Sur cette version vous pouvez travailler avec les memes fonctions que vous auriez vu sur le TP_Part1.

suivre les instructions du TP
