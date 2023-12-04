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
                        bat 'mvn clean install'
                    }
                }
                stage ("docker image building"){
                steps{
                     bat 'docker build -t ec2/spring-boot .'
                   }
                }
    }
}