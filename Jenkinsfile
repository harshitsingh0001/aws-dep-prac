pipeline {
    agent any
    stages{
        stage("Initialize") {
            steps{
                echo(message: 'hello')
            }
        }
          stage('Check Maven Version') {
                    steps {
                        bat 'mvn --version'
                    }
                }
    }
}