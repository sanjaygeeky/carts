pipeline {
  agent none
  stages {
    stage('Build') {
      agent {
        docker {
          image 'schoolofdevops/carts-maven'
        }

      }
      steps {
        echo 'this is the Build  job'
        sh 'mvn clean compile'
      }
    }

    stage('Test') {
      agent {
        docker {
          image 'schoolofdevops/carts-maven'
        }

      }
      steps {
        echo 'this is the Test job'
        sh 'mvn clean test'
      }
    }

    stage('Package') {
      agent {
        docker {
          image 'schoolofdevops/carts-maven'
        }

      }
      steps {
        echo 'this is the Package job'
        sh 'mvn package -DskipTests'
      }
    }

    stage('Publish') {
      steps {
        script {
          docker.withRegistry('https://index.docker.io/v1/', 'dockerlogin')
          {
            def dockerImage = docker.build("sanjaygeeky/carts:v${env.BUILD_ID}", "./")
            dockerImage.push()
            dockerImage.push("latest")
          }
        }

      }
    }

  }
/*  tools {
    maven 'maven363'
  }
*/
}
