pipeline {
    agent any

    tools{
        jdk 'java17'
        maven 'maven'
    }

    environment {
        mycred = credentials('docker-pass')
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
          sh 'sudo usermod -aG docker $USER'
          sh 'sudo chown root:docker /var/run/docker.sock'
          sh 'docker build -t ec2harshit.latest .'
          }
          }
        }

    }
}