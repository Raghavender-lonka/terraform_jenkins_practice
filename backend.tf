terraform {
  backend "s3" {
    bucket         	   = "jenkins-pipeline-bucket1"
    key              	   = "raghavender/terraform.tfstate"
    region         	   = "us-east-1"
  }
}
