pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git url: 'https://github.com/IamLokii6/2336_ISA2.git', branch: 'main'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    def app = docker.build("2336-app:latest")
                }
            }
        }
        stage('Cleanup') {
            steps {
                script {
                    sh 'docker rm -f 2336'
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    sh 'docker run -d --name 2336 2336:latest' 
                }
            }
        }
    }
}
