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
  tools {
    maven 'maven363'
  }
 /* environment {
    mvn = 'maven363'
  }*/
  
  post {
    always {
      echo 'this pipeline has completed...'
    }

  }
}
