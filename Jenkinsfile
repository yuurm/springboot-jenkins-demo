pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/yuurm/springboot-jenkins-demo.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean install'
            }
        }

        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }

        stage('Deploy') {
            steps {
                sh 'mvn spring-boot:run'
            }
        }

        stage('Cleanup') {
            steps {
                sh 'mvn clean'
            }
        }
    }

    post {
        always {
            sh 'mvn clean'
        }
    }
}
