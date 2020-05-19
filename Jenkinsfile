pipeline {
    agent none
    stages {
        stage('Pandoc') {
			agent{
			docker { image 'pandoc/latex' 
				args '-u root:root'
			       }
			}
			steps{	
				echo 'Converting Starts!'
				sh 'echo "Hello World"'
				echo 'Converting Ends!'
				}
		}
			
		stage('docker') {
			agent any
			steps{
				sh 'docker --version'
				sh 'docker images'
				sh 'docker ps'
				
			}
		}	
		
    }
}
	
