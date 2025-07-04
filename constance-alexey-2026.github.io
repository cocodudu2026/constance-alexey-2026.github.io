<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Alexey & Constance - Mariage</title>
  <style>
    :root {
      --kaki: #7c8b61;
      --crème: #fdfaf4;
      --rose: #e6cfc1;
      --accent: #bfae99;
      --text: #333;
    }

    body {
      margin: 0;
      font-family: "Segoe UI", sans-serif;
      background-color: var(--crème);
      color: var(--text);
    }

    header {
      background-color: var(--kaki);
      color: white;
      text-align: center;
      padding: 3rem 1rem 2rem;
    }

    header h1 {
      font-family: 'Brush Script MT', cursive;
      font-size: 3rem;
      margin: 0;
    }

    header p {
      font-size: 1.2rem;
      margin-top: 0.5rem;
    }

    section {
      padding: 2rem 1rem;
      max-width: 800px;
      margin: auto;
    }

    section h2 {
      font-family: 'Georgia', serif;
      font-size: 1.8rem;
      color: var(--kaki);
      margin-bottom: 1rem;
      border-bottom: 2px solid var(--kaki);
      display: inline-block;
    }

    .countdown {
      font-size: 1.5rem;
      font-weight: bold;
      margin: 1rem 0;
      color: var(--accent);
    }

    .button {
      background-color: var(--kaki);
      color: white;
      padding: 0.8rem 1.5rem;
      border: none;
      border-radius: 5px;
      font-size: 1rem;
      cursor: pointer;
      text-decoration: none;
    }

    footer {
      background-color: var(--rose);
      color: #333;
      text-align: center;
      padding: 1rem;
      font-size: 0.9rem;
      margin-top: 3rem;
    }

    img.responsive {
      max-width: 100%;
      height: auto;
      border-radius: 10px;
    }
  </style>
</head>
<body>
  <header>
    <h1>Alexey & Constance</h1>
    <p>Nous nous marions le 27 juin 2026 à La Domus, Roquefavour (Ventabren - 13114)</p>
    <div class="countdown" id="countdown"></div>
  </header>

  <section>
    <h2>Bienvenue</h2>
    <p>Nous avons créé ce site pour partager avec vous toutes les informations autour de notre mariage, du samedi 27 juin jusqu’au brunch et activités du dimanche. Merci de faire partie de ce moment si précieux !</p>
  </section>

  <section>
    <h2>Infos pratiques</h2>
    <p><strong>Cérémonie laïque :</strong> à 15h, à La Domus, Roquefavour (Ventabren)</p>
    <p><strong>Réception :</strong> même lieu, juste après la cérémonie</p>
    <p><strong>Brunch & activités :</strong> le dimanche 28 juin sur place</p>
  </section>

  <section>
    <h2>Hébergement</h2>
    <p>Des hébergements sont disponibles à proximité de Ventabren, Aix-en-Provence, et dans le domaine. Nous vous partagerons une liste d’adresses recommandées prochainement.</p>
  </section>

  <section>
    <h2>Dress code</h2>
    <p>Ambiance chic champêtre 🌿. Tenue légère, élégante et confortable. Les talons aiguilles sont déconseillés dans les jardins !</p>
  </section>

  <section>
    <h2>Activités du dimanche</h2>
    <p>Le dimanche, nous vous préparons un moment convivial : brunch, jeux extérieurs, détente, musique… Venez en tenue décontractée et avec votre bonne humeur !</p>
  </section>

  <section>
    <h2>Appel aux talents</h2>
    <p>Musicien·ne ? Magicien·ne ? Animateur·rice dans l’âme ? Si vous avez envie de contribuer d’une façon originale à cette journée, contactez-nous, on adorerait ! 🎤🎨🎻</p>
  </section>

  <section>
    <h2>Programme détaillé</h2>
    <p>Nous publierons bientôt ici le déroulé précis du week-end.</p>
  </section>

  <section>
    <h2>RSVP</h2>
    <p>Merci de confirmer votre présence avant le 1er mai 2026.</p>
    <a class="button" href="https://forms.gle/tonformulaire" target="_blank">Confirmer ma présence</a>
    <p>→ Les réponses seront envoyées à : alexeyducros@yahoo.com</p>
  </section>

  <section>
    <h2>Galerie photo</h2>
    <p>Nous ajouterons ici quelques photos… avant et après le grand jour 📷</p>
    <!-- <img class="responsive" src="votre-photo.jpg" alt="Notre photo" /> -->
  </section>

  <section>
    <h2>Nous contacter</h2>
    <p>Pour toute question ou info, vous pouvez nous écrire à : <strong>alexeyducros@yahoo.com</strong></p>
  </section>

  <footer>
    Site de mariage sans pub — avec amour 💕<br>
    Dernière mise à jour : juillet 2025
  </footer>

  <script>
    // Compte à rebours
    const dateMariage = new Date("2026-06-27T15:00:00").getTime();
    const countdown = document.getElementById("countdown");

    function updateCountdown() {
      const now = new Date().getTime();
      const distance = dateMariage - now;

      if (distance <= 0) {
        countdown.innerHTML = "C'est le grand jour ! 🎉";
        return;
      }

      const jours = Math.floor(distance / (1000 * 60 * 60 * 24));
      const heures = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
      const minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));

      countdown.innerHTML = `⏳ J-${jours} — ${heures}h ${minutes}min`;
    }

    updateCountdown();
    setInterval(updateCountdown, 60000);
  </script>
</body>
</html>
