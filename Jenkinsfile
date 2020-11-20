pipeline {
  agent any
  stages {
    stage('Building the code') {
      steps {
        echo 'this is the first job'
        sh 'mvn compile'
      }
    }

    stage('Validation') {
      steps {
        echo 'this is the second job'
        sh 'mvn test'
      }
    }

    stage('Package') {
      steps {
        echo 'this is the third job'
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
  post {
    always {
      echo 'this pipeline has completed...'
    }

  }
}