pipeline {
    agent any
    stages {
        stage('Git checkout') {
           steps{
                git branch: 'main', credentialsId: 'Github', url: 'https://github.com/Raghavender-lonka/terraform_jenkins_practice.git'
            }
        }
        stage('terraform init') {
            steps{
                 bat 'terraform init'
            }
        }
        stage('terraform plan') {
            steps{
                bat 'terraform plan'
            }
        }
        stage('terraform apply') {
            steps{
                 bat 'terraform apply -auto-approve'
            }
        }
    }
   
}
