pipeline {
    agent any
    stages{
        stage("Initialize") {
            steps{
                echo(message: 'hello')
            }
        }
        stage("checking maven available"){
        steps{
           script{
                sh 'mvn --version'
                sh 'java -version'
           }
        }
       }
    }
}