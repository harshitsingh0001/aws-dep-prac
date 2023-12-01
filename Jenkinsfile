pipeline {
    agent any

    tools{
        jdk 'java17'
        maven 'Maven-3.6.3'
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
    }
}