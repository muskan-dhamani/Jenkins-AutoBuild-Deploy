pipeline {
    agent any

    triggers {
        githubPush()
    }

    stages {

        stage('Info') {
            steps {
                echo "Branch: ${env.BRANCH_NAME}"
                echo "Commit: ${env.GIT_COMMIT}"
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t jenkins-app:latest .'
            }
        }

        stage('Deploy') {
            steps {
                sh './deploy.sh'
            }
        }
    }

    post {
        success {
            echo 'Deployment successful :)'
        }
        failure {
            echo 'Deployment failed :('
        }
    }
}
