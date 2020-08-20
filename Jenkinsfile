pipeline {
  agent any
  tools {
    maven 'Maven3.6.3'
  } //tools
 
  
  stages {
    stage('Compile') {
      steps {
        echo 'Compilation'
        sh 'mvn compile'
      }
    }

    stage('Test') {
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
        echo 'Archiving'
        archiveArtifacts '**/target/*.jar'
      }
    }

  }//stages
    
}
