pipeline {
    agent any

    stages {

        stage('Clone Code') {
            steps {
                git 'https://github.com/pavanchowdary490/java-web-app.git'
            }
        }

        stage('Build Maven') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t java-web-app .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run -d -p 8080:8080 java-web-app'
            }
        }
    }
}