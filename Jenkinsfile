pipeline {
    agent any
    tools{
        maven 'maven'
    }

    environment {
        mycred = credentials('docker-pass')
        DOCKER_IMAGE_NAME = 'ecimage'
        DOCKERFILE_PATH = 'Dockerfile'
        JENKINS_WORKSPACE = '/var/lib/jenkins/workspace/ec2'
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
                sh 'mvn install'
           }

        }
        }
        stage("creating docker image from file"){
          steps{
          script{
              docker.build("${DOCKER_IMAGE_NAME}", "-f ${DOCKERFILE_PATH} .")
          }
          }
        }

    }
}