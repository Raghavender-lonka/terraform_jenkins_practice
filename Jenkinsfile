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
                bat 'terraform init -backend-config="access_key=AKIAZ3CUIHQKNNZF2H5S" -backend-config="secret_key=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"'
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
//        stage('terraform destroy') {
//            steps{
//                bat 'terraform destroy -auto-approve'
//           }
//       }
    
  }
}
