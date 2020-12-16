pipeline {
  agent any
  
  stages {
    stage('Building the code') {
      steps {
        sh 'mvn compile'
      }
    }

    stage('Validation') {
      steps {
        sh 'mvn test'
      }
    }

    stage('Package') {
      steps {
        sh 'mvn package -DskipTests'
      }
    }

    stage('Archival') {
      steps {
        archiveArtifacts '**/*.jar'
      }
    }

  }
  environment {
    maven 'maven363'
  }
  post {
    always {
      echo 'this pipeline has completed...'
    }

  }
}
