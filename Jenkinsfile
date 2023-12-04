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