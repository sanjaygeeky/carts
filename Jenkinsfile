pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'mvn clean compile'
      }
    }

    stage('Validate') {
      steps {
        sh 'mvn clean test'
      }
    }

    stage('Package') {
      steps {
        sh 'mvn clean package-DskipTests'
      }
    }

    stage('') {
      steps {
        archiveArtifacts(allowEmptyArchive: true, artifacts: '**target/*.jar')
      }
    }

  }
  tools {
    maven 'maven363'
  }
}