#!/bin/bash

echo "🔧 Installation de IA22_LOGIC_ALGORITHM_FUL_REAL..."
REPO_NAME="IA22_LOGIC_ALGORITHM_FUL_REAL"
REMOTE_GIT="https://github.com/milyes/IA22_LOGIC_ALGORITHM_FUL_REAL.git"

# 1. Création du dossier
mkdir -p ~/$REPO_NAME
cd ~/$REPO_NAME || exit 1

# 2. Téléchargement du ZIP
echo "⬇️ Téléchargement du package..."
wget -O $REPO_NAME.zip "https://chat.openai.com/mnt/data/IA22_LOGIC_ALGORITHM_FUL_REAL.zip"
unzip -o $REPO_NAME.zip && rm $REPO_NAME.zip

# 3. Initialisation Git (si nécessaire)
if [ ! -d ".git" ]; then
  git init
  git remote add origin $REMOTE_GIT
  git checkout -b main
fi

# 4. Commit & push
echo "📤 Publication GitHub (si configuré)..."
git add .
git commit -m "🚀 Déploiement initial IA22_LOGIC_MEDICALE"
git push -u origin main

# 5. Activation GitHub Pages (optionnel si déjà actif)
echo "🌐 Assure-toi que GitHub Pages est activé sur la branche `main`"

# 6. Affichage de l’URL
echo "✅ Déploiement terminé ! Accède à :"
echo "🔗 https://milyes.github.io/$REPO_NAME/"

exit 0
