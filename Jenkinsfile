#!/usr/bin/env groovy

pipeline {

    agent {
        docker {
            image 'node'
            args '-u root'
        }
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                sh 'node --version'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
            }
        }
    }
}