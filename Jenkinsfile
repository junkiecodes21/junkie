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
                sh "AWS_ACCESS_KEY_ID=AKIAVYPDWDJUU65IP6IY AWS_SECRET_ACCESS_KEY=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 AWS_DEFAULT_REGION=us-east-1 terraform apply --auto-approve"
                 
                // 
            }
        }
        
    }
}