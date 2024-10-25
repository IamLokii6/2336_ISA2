// Jenkinsfile
pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/IamLokii/2336_ISA2.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("2336_ISA2")
                }
            }
        }
        stage('Run Container') {
            steps {
                script {
                    try {
                        sh 'docker rm -f 2336_ISA@'
                    } catch (Exception e) {
                        echo "No existing container to remove"
                    }
                    sh 'docker run -d --name 2336 2336_ISA2'
                }
            }
        }
    }
}
