#!/bin/bash
URL="https://milyes.github.io/IA22_LOGIC_ALGORITHM_FUL_REAL/"

echo "🌐 Lancement en ligne de IA22_LOGIC_ALGORITHM_FUL_REAL..."
# Ouvre l'URL dans le navigateur par défaut
if command -v xdg-open &> /dev/null; then
    xdg-open "$URL"
elif command -v termux-open &> /dev/null; then
    termux-open "$URL"
elif command -v open &> /dev/null; then
    open "$URL"
else
    echo "Veuillez ouvrir manuellement ce lien dans un navigateur :"
    echo "$URL"
fi


