pipeline {
    agent { dockerfile {
        filename 'Dockerfile'
        args '-v ${PWD}:/home/workdir --gpus all'}}
    stages {
        stage('build') {
            steps {
                sh 'python --version'
            }
        }
    }
}