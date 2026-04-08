pipeline {
    agent any

    tools {
        maven 'M3'
        jdk 'myjdk'
    }

    stages {

        stage('Build') {
            steps {
                bat 'mvn clean package'
            }
        }

        stage('Docker Build') {
            steps {
                bat 'docker build -t sample-webapp .'
            }
        }

        stage('Run Container') {
            steps {
                bat 'docker run -d -p 8087:8087 sample-webapp'
            }
        }
    }
}
