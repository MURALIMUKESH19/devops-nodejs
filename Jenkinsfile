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
                
                   sh 'docker build -t my-node-app:1.0 .'
                }
            }
        }

        stage('Deploy') {
            steps {
                // Deploy your Docker image (e.g., to a Docker registry or Kubernetes)
                // You would replace this with your actual deployment steps
               
                sh './check.sh'
                sh "kubectl apply -f your-deployment.yaml"
            }
        }
    }

    
}

