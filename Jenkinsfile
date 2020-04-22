pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
				echo 'Build Starts!'
		    		sh './sample.md'
		    		archiveArtifacts artifacts: 'target/*.docx', fingerprint: true
				echo 'Build Ends!'
			
       }
       
     }
}
}
