pipeline{

    agent any

// uncomment the following lines by removing /* and */ to enable
   tools{
       maven 'maven363' 
    }
    

    stages{
        stage('Building the code'){
            steps{
                echo 'this is the first job'
                sh 'mvn compile'

            }
        }
        stage('two'){
            steps{
                echo 'this is the second job'
                sh 'uptime'
            }
        }
        stage('three'){
            steps{
                echo 'this is the third job'
                sh 'uptime'
              
            }
        }
    }
    
    post{
        always{
            echo 'this pipeline has completed...'
        }
        
    }
    
}
