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
                     bat 'docker build -t ec2-spring .'
                   }
                }
                 stage('Push to Docker Hub') {
                             steps {
                                 script {
                                     // Log in to Docker Hub
                                     bat 'docker login -u harshitkumar007 -p KQ2a!ucM4sxsQpb'
                                     bat 'docker tag ec2-spring  harshitkumar007/ec2-spring'

                                     // Push the Docker image to Docker Hub
                                    bat 'docker push harshitkumar007/ec2-spring'
                                 }
                             }
                         }

                         stage("ec2-spring deployed to AWS EC2"){
                         steps {
                         script{
                                 withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'aws-key', usernameVariable: 'AWS_ACCESS_KEY_ID', passwordVariable: 'AWS_SECRET_ACCESS_KEY']]) {
                                       AWS("--region=eu-west-1 s3 ls")
                                   }
                              }
                            }
                         }

    }
}