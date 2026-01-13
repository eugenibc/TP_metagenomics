# TP M2 Bioinformatique – Écologie microbienne

Ce TP utilise un environnement **préconfiguré** avec R et RStudio.
Aucune installation de packages R n’est nécessaire.

---

## 1️⃣ Prérequis
- Docker installé sur votre machine  
👉 https://www.docker.com/products/docker-desktop

---

## 2️⃣ Récupérer le TP
```bash
git clone https://github.com/eugenibc/TP_metagenomics.git
cd TP_M2_Microbiome

## 2️⃣ Récupérer le TP
```bash
docker build -t tp_microbiome .
docker run -p 8787:8787 -e PASSWORD=tp tp_microbiome
