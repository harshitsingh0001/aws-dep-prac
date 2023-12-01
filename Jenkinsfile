pipeline {
    agent any

    tools{
        jdk 'java17'
        maven 'M3'
    }

    environment {
        mycred = credentials('docker-hub-pass')
    }

    stages{
        stage("Initialize") {
            echo(message: 'hello')
        }
    }
}