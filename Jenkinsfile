pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
				echo 'Build Starts!'
		    		sh 'make'
				sh 'sample.md'
		    		archiveArtifacts artifacts: '**/target/*.jar', fingerprint: true
				echo 'Build Ends!'
			
       }
       
     }
}
}
