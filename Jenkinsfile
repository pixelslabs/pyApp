pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
                url: 'https://github.com/pixelslabs/pyApp.git'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("python-app:${env.BUILD_ID}")
                }
            }
        }
        
        stage('Run Container') {
            steps {
                script {
                    docker.image("python-app:${env.BUILD_ID}").run()
                }
            }
        }
    }
}
