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
              sh "terraform apply --auto-approve"
                // 
            }
        }
        
    }
}