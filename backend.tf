terraform {
  backend "s3" {
    bucket         = "jenkins-test-daler-2022"
    key            = "jenkins/tfstate.tf"
    region         = "us-east-1"
    encrypt        = true
  }
}
