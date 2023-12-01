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
    }
}