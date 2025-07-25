#!/data/data/com.termux/files/usr/bin/bash

echo "[+] Initialisation Git pour IA22_LOGIC_ALGORITHM_FUL_REAL..."

# Étape 1 : Initialiser Git
git init

# Étape 2 : Ajouter le dépôt distant (à adapter avec votre URL réelle)
git remote add origin https://github.com/milyes/IA22_LOGIC_ALGORITHM_FUL_REAL.git

# Étape 3 : Ajouter les fichiers existants
git add .
git commit -m "Initial commit – version principale IA logique"

# Étape 4 : Pousser sur la branche principale (main)
git branch -M main
git push -u origin main

# Étape 5 : Créer les branches secondaires
git checkout -b dev
git push -u origin dev

git checkout -b test_apk
git push -u origin test_apk

git checkout -b defaut_html
git push -u origin defaut_html

# Revenir sur la branche principale
git checkout main

echo "[✔] Branches créées et poussées : main, dev, test_apk, defaut_html"

