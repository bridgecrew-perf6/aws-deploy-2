pipeline {
    agent any
    
    stages {
        
        stage ('Init'){
            steps{
                sh 'cd /opt/jenkins-auto/'
                sh 'cd /opt/jenkins-auto/aws-deploy && git pull'
                sh 'cp *.tf /opt/terraform_projects'
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