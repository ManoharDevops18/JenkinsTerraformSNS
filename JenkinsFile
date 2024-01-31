pipeline {
    agent any
    
    parameters {
        choice(
            choices:['init','validate','plan','apply','destroy'],
            description: 'Terraform action to apply',
            name:'action'
            )
    }
    stages{
        stage('Checkout'){
            steps{
                git branch: 'main', credentialsId: 'JenkinsTerraform', url: 'https://github.com/ManoharDevops18/JenkinsTerraformSNS.git'
            }
        }
        stage('Terraform init'){
            when{
                expression {params.action == 'init'}
            }
            steps{
                sh 'terraform --version'
                sh 'terraform init'
            }
        }
        
        stage('Terraform validate'){
            when{
                expression {params.action == 'validate'}
            }
            steps{
                sh 'terraform validate'
            }
        }
        
        stage('Terraform plan'){
            when{
                expression {params.action == 'plan'}
            }
            steps{
                sh 'terraform plan'
            }
        }
        
        stage('Terraform apply'){
            when{
                expression {params.action == 'apply'}
            }
            steps{
                sh 'terraform apply --auto-approve'
                
            }
        }
        
        stage('Terraform destroy'){
            when{
                expression {params.action == 'destroy'}
            }
            steps{
                sh 'terraform destroy'
            }
        }
        
    }
}
