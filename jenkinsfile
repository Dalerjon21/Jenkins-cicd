pipeline {
    agent any
    tools {
        terraform 'terraform'
    }
    stages {
        stage('Terraform Apply') {
            when {
                expression {
                    return params.action == 'apply'
                }
            }
            steps {
                git 'https://github.com/Dalerjon21/Jenkins-cicd'

                sh 'terraform init -no-color'

                echo "terraform action from paratmetr is --> ${action}"

                sh "${action}"
            }
        }
        stage('Terraform Destroy') {
            when {
                expression {
                    return params.action == 'destroy'
                }
            }
            steps {
                echo "terraform action from paratmetr is --> ${action}"
                sh "${action}"
            }
        }
    }
}