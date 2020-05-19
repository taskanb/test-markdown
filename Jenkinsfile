pipeline {
    agent none
    stages {
        stage('Pandoc') {
			agent{
			docker { image 'pandoc/latex' }
			}
			steps{	
				echo 'Converting Starts!'
				sh '${WORKSPACE}' 
				echo 'Converting Ends!'
				
				}
		}
			
		stage('docker') {
			agent any
			steps{
				sh 'docker --version'
				sh 'docker images'
				sh 'docker container ls -a'
			}
		}	
		
    }
}
	
