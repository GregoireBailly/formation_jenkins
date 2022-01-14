pipeline {
    agent any

    parameters {
      string(name: 'version', description: 'App version to deploy')
      choice(name: 'env', choices: ['PKG_ONLY','PROD'], description: 'Environment where the app should be deployed')
    }
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
                sh './build.sh'
            }
        }
        stage('Deploy') {
            steps {
                echo "deploying ${params.version} to ${params.env}"
                sh "./deploy.sh ${params.env} ${params.version}"
            }
        }
    }
}