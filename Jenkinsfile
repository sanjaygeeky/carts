pipeline {
  agent any
    tools{
       maven 'maven363' 
    }
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
  post {
    always {
      echo 'this pipeline has completed...'
    }

  }
}
