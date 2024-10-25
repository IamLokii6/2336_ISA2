pipeline {
    agent any 
    
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    bat "docker build -t iamlokii06/2336_isa2 ."
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
                    bat "docker run -d --name my-app-container iamlokii06/2336_isa2"
                }
            }
        }
    }
    post {
        always {
            script {
                bat "docker rmi -f iamlokii06/2336_isa2 || true"
            }
        }
    }
}
