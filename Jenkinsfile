pipeline {
    agent any
    stages {
        sstage("Build and start test image") {
            steps {
                
                sh "docker-compose up -d"
                waitUntilServicesReady
            }
        }
		stage('Test') {
            steps {
                echo 'Test Starts!'
            }
			post{
				success{			
					archiveArtifacts artifacts: 'target/*.docx', fingerprint: true	
			}
		}
	 }
		
       
   }
}
