pipeline {
    agent any
    stages {
        stage('Build'){
            steps {
				echo 'Build Starts!'
		    		sh './sample.md'	    		
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

