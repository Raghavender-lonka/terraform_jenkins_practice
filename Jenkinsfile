pipeline {
    agent any

        stage('Initialize') {
            steps {
                // Run `terraform init` to initialize the working directory.
                sh 'terraform init'
            }
        }

        stage('Plan') {
            steps {
                // Run `terraform plan` to generate an execution plan
                sh 'terraform plan -out=tfplan'
            }
        }

        stage('Apply') {
            steps {
                // Apply the changes using the generated plan file
                sh 'terraform apply'
            }
        }
   
}
