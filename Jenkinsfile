pipeline {
    agent any

    stages {

        stage('Clone Code') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/nileshwanare1/Git_Jenkins_Docker_demo.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t nginx-webapp .'
            }
        }

        stage('Stop Old Container') {
            steps {
                sh 'docker rm -f nginx-webapp || true'
            }
        }

        stage('Run New Container') {
            steps {
                sh 'docker run -d --name nginx-webapp -p 80:80 nginx-webapp'
            }
        }
    }
}