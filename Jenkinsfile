#!groovy

pipeline {
  agent none
  stages {
	node {
	  sh 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe'
	}
    stage('Maven Install') {
      agent {
        docker {
          image 'maven:3.5.0'
        }
      }
      steps {
        sh 'mvn clean install'
      }
    } 
  }
}