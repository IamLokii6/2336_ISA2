pipeline {
    agent any
    stages {
    
        
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
                    sh '''
                    if [ "$(docker ps -q -f name=2336)" ]; then
                        docker rm -f 2336
                    fi
                    '''
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    sh 'docker run -d --name 2336 2336-app:latest'
                }
            }
        }
    }
    post {
        always {
            script {
                sh 'docker rmi -f 2336-app:latest || true'
            }
        }
    }

}
