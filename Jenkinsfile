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
				
				}
		}
			
		stage('docker') {
			agent any
			steps{
				sh 'docker --version'
				sh 'docker images'
				sh 'docker container ls -a'
				sh './md_to_docx.sh'
			}
		}	
		
    }
}
	
