pipeline {
    agent any 
    
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    bat "docker build -t IamLokii06/2336_ISA2 ."
                }
            }
        }
        stage('Delete Existing Container') {
            steps {
                script {
                    bat "docker rm -f my-app-container || exit 0"
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    bat "docker run -d --name my-app-container IamLokii06/2336_ISA2"
                }
            }
        }
    }
    post {
        always {
            script {
                bat "docker rmi -f IamLokii06/2336_ISA2 || true"
            }
        }
    }
}
