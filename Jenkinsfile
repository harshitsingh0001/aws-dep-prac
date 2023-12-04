pipeline {
    agent any
    tools{
        maven 'maven'
    }

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

           }

        }
        }
        stage("creating docker image from file"){
          steps{
          script{
                sh 'docker --version'
          }
          }
        }

    }
}