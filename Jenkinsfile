pipeline {
    agent any
    
    stages {
        
        stage ('Init'){
            steps{
                sh 'cd /opt/jenkins-auto/'
                sh 'git pull'
                sh 'cd /opt/jenkins-auto/aws-deploy && cp terraform* /opt/terraform_projects'
            }
        }
        
        stage ('Test') {
            steps{
                sh 'terraform init'
                
            }
            
        }
        
        stage ('Build') {
            steps{
                sh 'terraform plan'
            }
        }
        
        stage ('Deploy') {
            steps{
                sh 'terraform apply -auto-approve'
            }
        }
    }
}