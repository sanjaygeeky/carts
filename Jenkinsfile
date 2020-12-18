pipeline{
    agent any
    tools {
        maven 'maven363'
    }

    stages{
        stage("Build"){
            steps{
                sh 'mvn clean compile'
            }
        }
        stage ("Validate"){
            steps{
                sh 'mvn clean test'
            }
        }
        stage ("Package"){
            steps{
                sh 'mvn clean package-DskipTests'
            }

        }




    }






}