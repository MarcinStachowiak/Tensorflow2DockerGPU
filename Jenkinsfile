pipeline {
    agent { docker { image 'python:3.5.1'
        args '-v ${PWD}:/home/workdir --gpus all'} }
    stages {
        stage('build') {
            steps {
                sh 'python --version'
            }
        }
    }
}