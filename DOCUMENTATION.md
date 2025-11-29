# Documentation Pipeline CI/CD

## Architecture
- **GitHub** : Stockage du code source
- **Jenkins** : Orchestration du pipeline
- **Maven** : Build et gestion des dépendances
- **JUnit** : Tests unitaires
- **Tomcat** : Serveur d application

## Étapes du Pipeline
1. **Checkout** : Récupération du code depuis GitHub
2. **Build** : Compilation avec Maven
3. **Tests** : Exécution des tests unitaires
4. **SAST** : Analyse de sécurité (SonarQube)
5. **Déploiement** : Déploiement automatique sur Tomcat

## Problèmes Rencontrés
- Configuration des permissions Tomcat
- Authentification GitHub avec tokens
- Gestion des branches Git

## Configuration SonarQube

### Installation :
- SonarQube 9.9.0
- Port : 9000
- Authentification : Token

### Métriques analysées :
- Bugs
- Vulnerabilités
- Code Smells
- Couverture de code
- Duplication de code

### Intégration Jenkins :
- Plugin SonarQube Scanner
- Quality Gate
- Rapport d'analyse automatique
