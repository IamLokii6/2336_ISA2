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
                    def app = docker.build("myapp:latest")
                }
            }
        }
        stage('Clean Up') {
            steps {
                script {
                    sh "docker rm -f 2336 || true"
                }
            }
        }
        stage('Run Container') {
            steps {
                script {
                    sh "docker run -d --name 2336 myapp:latest"
                }
            }
        }
    }

    post {
        always {
            echo 'Cleaning up after build...'
            sh "docker rmi myapp:latest || true"
        }
    }
}
