pipeline {
	 environment { 
		registry = "simo00707/mycompany-app" 
		registryCredential = 'dockerhub' 
		dockerImage = '' 
	} 
	agent any
    	stages {
        	stage ('Build') {
            		steps {
                		sh 'mvn clean package'
            		}
        	}
		stage('Building image') { 
			steps{ 
				script { 
					dockerImage = docker.build(registry + ":$BUILD_NUMBER") 
				} 
			} 
		}
		stage('Deploy Image') { 
			steps{ 
				script { 
					docker.withRegistry( '', registryCredential ) { 
					dockerImage.push() } } } } } }
