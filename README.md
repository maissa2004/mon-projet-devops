# Projet DevOps - ISET Kairouan

Ce projet démontre un pipeline DevOps complet avec :
- **CI/CD** : Jenkins
- **Build** : Maven
- **Déploiement** : Tomcat
- **Versioning** : Git/GitHub

## Structure du projet
mon-projet-devops/
├── pom.xml
├── src/
│ └── main/
│ └── webapp/
│ ├── index.jsp
│ └── WEB-INF/
│ └── web.xml
├── target/ (généré après build)
│ └── mon-projet-devops.war
└── README.md

## 🚀 Déploiement Manuel

1. **Clonez le repository**
   ```bash
   git clone https://github.com/maissa2004/mon-projet-devops.git
   cd mon-projet-devops
