terraform {
  backend "s3" {
    bucket = "jenkins-pipeline-bucket1"
    key    = "statefile/terraform.tfstate"
    region = "us-east-1"
  }
}
