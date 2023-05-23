pipeline {
  agent any
  environment {
       AWS_REGION = 'us-west-1'
       AWS_ACCESS_KEY_ID = ASIAZ3CUIHQKN5JUVJG5
       AWS_SECRET_ACCESS_KEY = j5hw5vVaHaiHTAYv+dZlG8iXn9y4FuiKDVZHMvxT
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
