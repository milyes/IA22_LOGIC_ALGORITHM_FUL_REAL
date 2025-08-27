
async function runIA() {
  const input = document.getElementById("inputIA").value;
  const result = document.getElementById("resultIA");

  if (!input.trim()) {
    result.innerHTML = "⛔ Veuillez entrer une requête médicale.";
    return;
  }

  if (input.toLowerCase().includes("fièvre") || input.toLowerCase().includes("température")) {
    result.innerHTML = "🌡️ Symptôme détecté : fièvre. 🧠 IA recommande hydratation et consultation si > 39°C.";
  } else if (input.toLowerCase().includes("douleur") || input.toLowerCase().includes("crampe")) {
    result.innerHTML = "⚠️ Symptôme détecté : douleur. 🧠 IA recommande repos + diagnostic physique.";
  } else {
    result.innerHTML = "ℹ️ Analyse terminée. Aucun symptôme critique détecté. Poursuivre observation.";
  }
}

fetch("logic_data/netsecure_ai_modules.json")
  .then(response => response.json())
  .then(data => {
    const container = document.getElementById("module-cards");
    data.forEach(mod => {
      const card = document.createElement("div");
      card.innerHTML = `<h3>${mod.name}</h3><p>${mod.description}</p><p>Status: ${mod.status}</p>`;
      container.appendChild(card);
    });
  });
