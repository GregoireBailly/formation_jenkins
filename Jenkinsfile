pipeline {
    agent any

    stages {
        stage('Chekout') {
            steps {
                git url: 'https://github.com/GregoireBailly/formation_jenkins.git', branch: 'master'
                echo 'Checkout Completed'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing not implemented'
            }
        }
        stage('Build') {
            steps {
                echo 'Building....'

                echo 'Build finished'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                echo 'Push image'
                echo 'update service'
                echo 'Deploy finished'
            }
        }
    }
}