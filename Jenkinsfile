pipeline {
    agent any 
    stages {
        stage('terraform init') { 
            steps {
                echo "Initialising terraform"
              sh "terraform init" 
                // 
            }
        }
        stage('terraform apply') { 
            steps {
                echo "applying terraform"
                withAWS(credentials:'awscredentials') {
                    sh "AWS_DEFAULT_REGION=us-east-1 terraform apply --auto-approve"
                }
            }
        }
        
    }
}