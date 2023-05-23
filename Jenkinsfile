pipeline {
  agent any
  environment {
       AWS_REGION = 'us-west-1'
       AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
       AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')  
   }
  stages {
      stage('Git checkout') {
         steps{
              git branch: 'main', credentialsId: 'Github', url: 'https://github.com/Raghavender-lonka/terraform_jenkins_practice.git'
          }
      }
      stage('terraform init') {
          steps{
               bat 'terraform init -upgrade'
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
