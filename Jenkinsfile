#!groovy

pipeline {
  agent none
  stages {
    stage('Maven Install') {
      agent any
      steps {
        sh 'mvn clean install'
      }
    }
    stage('Docker Build') {
      agent any
      steps {
        sh 'docker build -t 190319039393/spring-petclinic:latest .'
      }
    }
	stage('Docker Push') {
	  agent any 
	  steps {
        sh "docker login -u 190319039393 -p 123456"
        sh 'docker push 190319039393/spring-petclinic:latest'
	  }
	}
  }
}