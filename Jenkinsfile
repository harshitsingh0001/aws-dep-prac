pipeline {
    agent any

     environment {
            DOCKER_HUB_CREDENTIALS = credentials('docker-hub-pass')
            DOCKER_IMAGE_NAME = 'ec2/spring-boot'
            DOCKER_IMAGE_TAG = 'latest'
            DOCKER_HUB_CREDENTIALS_USR='harshit.kumar@bonamisoftware.com'
        }
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
                 stage('Push to Docker Hub') {
                             steps {
                                 script {
                                     // Log in to Docker Hub
                                     bat 'docker login -u harshitkumar007 -p KQ2a!ucM4sxsQpb'
                                   bat 'docker tag ec2/spring-boot  harshitkumar007/ec2/spring-boot'

                                     // Push the Docker image to Docker Hub
                                    bat 'docker push harshitkumar007/ec2/spring-boot'
                                 }
                             }
                         }
    }
}