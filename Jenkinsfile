pipeline {
    agent none
    stages {
        stage('Pandoc') {
			agent{
			docker { image 'pandoc/latex'
				args '-v /var/run/docker.sock:/var/run/docker.sock'
		                 
			       }
			}
			steps{	
				echo 'Converting Starts!'
				sh '${PWD}/md_to_docx.sh'
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
				sh 'whoami'
			}
		}	
		
    }
}
	
