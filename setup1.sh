#!/bin/bash

echo "🔧 Installation complète IA22_LOGIC_ALGORITHM_FUL_REAL..."

mkdir -p IA22_LOGIC_ALGORITHM_FUL_REAL/logic_data
cd IA22_LOGIC_ALGORITHM_FUL_REAL || exit

# 🔹 index.html
cat > index.html <<EOF
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <title>IA22 LOGIC – Interface IA Web</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="logic_data/style.css">
  <script src="logic_data/main.js" defer></script>
</head>
<body>
  <h1>IA22 LOGIC – Système IA Médical Intelligent</h1>
  <div id="ia-container">
    <p id="status">Chargement du module IA...</p>
  </div>
</body>
</html>
EOF

# 🔹 logic_data/style.css
cat > logic_data/style.css <<EOF
body {
  font-family: Arial, sans-serif;
  background: #f4f4f4;
  color: #333;
  text-align: center;
  padding: 2rem;
}
#ia-container {
  background: #fff;
  border-radius: 12px;
  box-shadow: 0 0 10px rgba(0,0,0,0.1);
  padding: 2rem;
  margin-top: 2rem;
}
EOF

# 🔹 logic_data/main.js
cat > logic_data/main.js <<EOF
document.addEventListener("DOMContentLoaded", () => {
  const status = document.getElementById("status");
  status.textContent = "✅ IA chargée avec succès.";
});
EOF

# 🔹 README.md
cat > README.md <<EOF
# IA22_LOGIC_ALGORITHM_FUL_REAL

🧠 Plateforme IA médicale intelligente — version publique.

## 🔗 Accès en ligne
👉 https://milyes.github.io/IA22_LOGIC_ALGORITHM_FUL_REAL/

## 📁 Contenu
- `index.html` : interface Web IA
- `logic_data/` : modules IA JS/CSS
- `launcher_online.sh` : lanceur Web
- `setup.sh` : installation & GitHub auto-sync

## 👨‍💻 Auteur
**Zoubirou Mohammed Ilyes**  
ORCID : [https://orcid.org/0009-0007-7571-3178](https://orcid.org/0009-0007-7571-3178)  
Organisation : **NetSecurePro_IA**
EOF

# 🔹 launcher_online.sh
cat > launcher_online.sh <<EOF
#!/bin/bash
echo "🌐 Lancement en ligne de IA22_LOGIC_ALGORITHM_FUL_REAL..."
xdg-open https://milyes.github.io/IA22_LOGIC_ALGORITHM_FUL_REAL/
EOF
chmod +x launcher_online.sh

# 🔹 Git initialisation
git init
git remote add origin https://github.com/milyes/IA22_LOGIC_ALGORITHM_FUL_REAL.git
git pull origin main --rebase
git add .
git commit -m "🚀 Initial commit IA22_LOGIC_ALGORITHM_FUL_REAL"
git push origin main

echo "✅ Déploiement terminé !"
echo "🔗 Accès en ligne : https://milyes.github.io/IA22_LOGIC_ALGORITHM_FUL_REAL/"


