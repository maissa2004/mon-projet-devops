<!DOCTYPE html>
<html>
<head>
    <title>Projet DevOps - ISET Kairouan</title>
    <meta charset="UTF-8">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }
        .header {
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.2);
            text-align: center;
            margin-bottom: 30px;
        }
        .card {
            background: white;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            margin-bottom: 20px;
        }
        h1 {
            color: #2c3e50;
            margin-bottom: 10px;
        }
        h2 {
            color: #34495e;
            border-bottom: 2px solid #3498db;
            padding-bottom: 10px;
        }
        .info-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
            margin-top: 20px;
        }
        .tech-badge {
            display: inline-block;
            background: #3498db;
            color: white;
            padding: 5px 15px;
            border-radius: 20px;
            margin: 5px;
            font-size: 14px;
        }
        .success-message {
            background: #d4edda;
            color: #155724;
            padding: 15px;
            border-radius: 8px;
            border-left: 4px solid #28a745;
            margin: 20px 0;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>🚀 Projet DevOps - ISET Kairouan</h1>
            <p>Déploiement Automatisé avec Jenkins, Maven et Tomcat</p>
        </div>

        <div class="success-message">
            <h3>✅ Déploiement Réussi !</h3>
            <p>L'application a été déployée automatiquement via le pipeline CI/CD</p>
        </div>

        <div class="info-grid">
            <div class="card">
                <h2>📊 Informations Serveur</h2>
                <p><strong>Date/Heure:</strong> <%= new java.util.Date() %></p>
                <p><strong>Système:</strong> <%= System.getProperty("os.name") %></p>
                <p><strong>Architecture:</strong> <%= System.getProperty("os.arch") %></p>
                <p><strong>Version Java:</strong> <%= System.getProperty("java.version") %></p>
                <p><strong>Utilisateur:</strong> <%= System.getProperty("user.name") %></p>
            </div>

            <div class="card">
                <h2>🛠 Technologies Utilisées</h2>
                <div>
                    <span class="tech-badge">Java</span>
                    <span class="tech-badge">Maven</span>
                    <span class="tech-badge">Jenkins</span>
                    <span class="tech-badge">Tomcat</span>
                    <span class="tech-badge">Git</span>
                    <span class="tech-badge">GitHub</span>
                    <span class="tech-badge">JSP</span>
                    <span class="tech-badge">Servlets</span>
                </div>
            </div>
        </div>

        <div class="card">
            <h2>📈 Étapes du Pipeline DevOps</h2>
            <ol>
                <li>Commit du code sur GitHub</li>
                <li>Déclenchement automatique de Jenkins</li>
                <li>Build avec Maven</li>
                <li>Génération du fichier WAR</li>
                <li>Déploiement sur Tomcat</li>
                <li>Redémarrage du serveur</li>
                <li>Test automatique</li>
            </ol>
        </div>

        <div class="card">
            <h2>👨‍💻 Équipe DSI31</h2>
            <p><strong>Étudiante:</strong> Mayssa</p>
            <p><strong>Module:</strong> Atelier DevOps</p>
            <p><strong>Institution:</strong> ISET Kairouan</p>
        </div>
    </div>
</body>
</html>
