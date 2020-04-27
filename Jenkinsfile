pipeline {
    agent any
    stages {
        stage('Build'){
            steps {
				echo 'Build Starts!'
				npm install -g markdown-pdf
				markdown-pdf /path/to/markdown	    		
				echo 'Build Ends!'
			
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
    
