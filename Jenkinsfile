pipeline {
    agent any
    stages {
        stage('Build'){
            steps {
				echo 'Build Starts!'
		    		sh './sample.md'
		    		
				echo 'Build Ends!'
			
       }
		post{
			success{			
				archiveArtifacts artifacts: 'target/*.docx', fingerprint: true	
			}
		}
		
       
     }
	}
}
