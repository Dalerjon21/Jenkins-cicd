/* groovylint-disable-next-line CompileStatic */
pipeline {
    agent any
    tools {
        terraform 'terraform'
    }
    stages {
        stage('Git init') {
            steps {
                git credentialsId: 'terraform-cicd-token', url: 'https://github.com/Dalerjon21/Jenkins-cicd.git'
            }
        }
        stage('Terraform init') {
            steps {
                sh 'terraform init -no-color'
            }
        }
        stage('Terraform plan') {
            steps {
                sh 'terraform plan -no-color'
            }
        }
        stage('Terraform apply') {
            input {
                message "Do you want to apply deployment?"
            }
            steps {
                sh 'terraform apply --auto-approve -no-color'
            }
        }
    }
}