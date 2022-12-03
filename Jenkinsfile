pipeline {
  agent any
  stages {
    stage('echo hello') {
      parallel {
        stage('echo hello') {
          steps {
            echo 'Hello World'
          }
        }

        stage('Hello from parallel stage') {
          steps {
            echo 'Hello from parallel stage'
          }
        }

      }
    }

    stage('Generate log') {
      steps {
        sh '''#!/bin/bash
echo "Here is the log" >> ./logfile.log'''
      }
    }

  }
}