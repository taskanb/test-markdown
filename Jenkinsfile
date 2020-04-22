pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
				echo 'Build Starts!'
		    		sh 'make'
		    		archiveArtifacts artifacts: '**/target/*.md', fingerprint: true
				echo 'Build Ends!'
			
       }
       
     }
}
}
