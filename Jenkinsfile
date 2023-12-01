pipeline {
    agent any

    tools{
        jdk 'java17'
        maven 'maven 3_9_2'
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