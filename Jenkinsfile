pipeline {
    agent none
    stages {
        stage('Pandoc') {
			agent{
			docker { image 'pandoc/latex' 
		                 args '-u jenkins:jenkins'
			       }
			}
			steps{	
				echo 'Converting Starts!'
				sh '${WORKSPACE}/md_to_docx.sh'
				echo 'Converting Ends!'
				}
		}
			
		stage('docker') {
			agent any
			steps{
				sh 'docker --version'
				sh 'docker images'
				sh 'docker ps'
				sh 'ls -l'
			}
		}	
		
    }
}
	
