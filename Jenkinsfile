pipeline{

    agent any

// uncomment the following lines by removing /* and */ to enable
    tools{
       maven 'maven363' 
    }
   

    stages{
        stage('Build'){
            steps{
                echo 'this is the Build  job'
                sh 'mvn clean compile'
                 }
        }
        stage('Test'){
            steps{
                echo 'this is the Test job'
                sh 'mvn clean test'
                }
        }
        stage('Package'){
            steps{
                echo 'this is the Package job'
                sh 'mvn package -DskipTests'
                 }
        }
    }
    
    
}

