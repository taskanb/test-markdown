pipeline {
    agent none
    stages {
        stage('Pandoc') {
			agent{
			docker { image 'pandoc/latex' }
			}
			steps{	
				echo 'Building Starts!'
				sh 'md_to_docx.sh' 
				echo 'Building Ends!'
				
				}
		}
			
		stage('docker') {
			agent any
			steps{
				sh 'docker --version'
				sh 'docker images'
			}
		}	
		
    }
}
	
