pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
               bat 'docker build -t calibrated_circle .'
            }
        }
        stage('Run') {
            steps {
                bat 'docker run -t calibrated_circle'
            }
        }
        stage('Authentication') {
            steps {
                bat 'docker tag calibrated_circle gaikar/calibrated_circle:%BUILD_ID%'
            }
        }
        stage('Push') {
            steps {
                bat 'docker push gaikar/calibrated_circle:%BUILD_ID%'
            }
        }
    }
}
