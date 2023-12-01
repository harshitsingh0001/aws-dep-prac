pipeline {
    agent any

    tools{
        jdk 'java17'
        maven 'maven'
    }

    environment {
        mycred = credentials('docker-pass')
        DOCKER_IMAGE_NAME = 'ecimage'
        DOCKERFILE_PATH = 'Dockerfile'
        JENKINS_WORKSPACE = '/var/lib/jenkins/workspace/ec2'
        JAR_FILE_PATH = "${JENKINS_WORKSPACE}/target/EC2-practice-0.0.1-SNAPSHOT.jar"

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
              sh "ls -l ${JAR_FILE_PATH}"
              docker.build("${DOCKER_IMAGE_NAME}", "-f ${DOCKERFILE_PATH} .")
          }
          }
        }

    }
}