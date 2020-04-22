pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
				echo 'Build Starts!'
		    		sh './sample.md'
		    		archiveArtifacts artifacts: 'build/libs/**/*.docx', fingerprint: true
				echo 'Build Ends!'
			
       }
       
     }
}
}
