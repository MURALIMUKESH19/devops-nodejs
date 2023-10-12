pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout your source code from your version control system
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                // Build a Docker image with the Dockerfile in the project directory
                script {
                    sh "check.sh"
                }
            }
        }

        stage('Deploy') {
            steps {
                // Deploy your Docker image (e.g., to a Docker registry or Kubernetes)
                // You would replace this with your actual deployment steps
                sh "kubectl apply -f your-deployment.yaml"
            }
        }
    }

    post {
        success {
            // Clean up or notify on successful build
        }
        failure {
            // Notify or take action on build failure
        }
    }
}

