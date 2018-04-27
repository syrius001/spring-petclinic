#!groovy

pipeline {
  agent none
  stages {
	stage('Docker Push') {
	  agent any 
	  steps {
		withCredentials([usernamePassword(credentialsId: 'dockerHub', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
          sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
          sh 'docker push 190319039393/spring-petclinic:latest'
        }
	  }
	}
  }
}