pipeline {
    agent any

    tools{
        jdk 'java17'
        maven 'maven'
    }

    environment {
        mycred = credentials('docker-pass')
        DOCKER_IMAGE_NAME = 'ecimage'
        DOCKERFILE_PATH = 'Jenkinsfile'
    }

    stages{
        stage("Initialize") {
            steps{
                echo(message: 'hello')
            }
        }
        stage("checking docekr available"){
        steps{
           script{
                sh 'docker --version'
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