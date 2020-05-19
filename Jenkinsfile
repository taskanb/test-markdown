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
				sh '${WORKSPACE}/md_to_docx.sh'
				echo 'Converting Ends!'
				}
		}
			
		stage('docker') {
			agent any
			steps{
				sh 'docker info'
				sh 'docker images'
				sh 'docker container ls -a'
				
			}
		}	
		
    }
}
	
