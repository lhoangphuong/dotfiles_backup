pipeline {
  agent any
  stages {
    stage('echo hello') {
      steps {
        echo 'Hello World'
      }
    }

    stage('Generate log') {
      steps {
        sh '''#!/bin/bash
echo "Here is the log" >> ~/logfile.log'''
      }
    }

  }
}