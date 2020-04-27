pipeline {
    agent any
    stages {
        stage('Build'){
            steps {
				echo 'Build Start!'
		    		sh 'md_to_docx.sh'
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
    
