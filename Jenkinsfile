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
    }
    stages{
        stage("Initialize") {
            steps{
                echo(message: 'hello')
                echo(script($env.JAVA_HOME))
            }
        }
        stage("checking docekr available"){
        steps{
           script{
                sh 'docker --version'
                sh 'java -version'
           }

        }

        }
         stage("MAven") {
              steps{
              script {
                        echo(message: 'fd')    
              }
                }}
        stage("creating docker image from file"){
          steps{
          script{
              docker.build("${DOCKER_IMAGE_NAME}", "-f ${DOCKERFILE_PATH} .")
          }
          }
        }

    }
}