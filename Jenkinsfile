pipeline {
    agent any
    tools {
        maven 'M3'
        jdk 'JDK17'
    }
    
    stages {
        stage('Checkout') {
            steps {
                echo '📦 Récupération du code depuis GitHub...'
                git branch: 'master', url: 'https://github.com/maissa2004/mon-projet-devops.git'
            }
        }
        
        stage('Build') {
            steps {
                echo '🔨 Construction de l application...'
                sh 'mvn clean install package'
            }
        }
        
        stage('Tests') {
            steps {
                echo '🧪 Exécution des tests unitaires...'
                sh 'mvn test'
            }
            post {
                always {
                    junit 'target/surefire-reports/*.xml'
                }
            }
        }
        
        stage('SAST - SonarQube') {
            steps {
                echo '🔍 Analyse statique avec SonarQube...'
                withSonarQubeEnv('sonarqube-local') {
                    sh 'mvn sonar:sonar'
                }
            }
        }
        
        stage('Qualité - Attendre résultat SonarQube') {
            steps {
                echo '⏳ Attente des résultats de SonarQube...'
                timeout(time: 5, unit: 'MINUTES') {
                    waitForQualityGate abortPipeline: true
                }
            }
        }
        
        stage('Déploiement') {
            steps {
                echo '🚀 Déploiement sur Tomcat...'
                sh '''
                    sudo cp target/mon-projet-devops.war /opt/tomcat/latest/webapps/
                    sudo systemctl restart tomcat
                    echo "Application déployée avec succès!"
                '''
            }
        }
    }
    
    post {
        success {
            echo '✅ Pipeline exécuté avec succès!'
        }
        failure {
            echo '❌ Échec du pipeline!'
        }
        always {
            echo '📊 Pipeline terminé - Vérifiez SonarQube pour les métriques'
        }
    }
}
