pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
				echo 'Build Starts!'
				bat 'mvn -B -DskipTests clean package'
				echo 'Build Ends!'
			
       }
       
     }
}
}
