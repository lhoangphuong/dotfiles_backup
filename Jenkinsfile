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

Log() {
  # if STDIN (0) is not a terminal, iterate over any lines of standard input
  [[ ! -t 0 ]] && while read line; do echo "$line" >> ~/logfile.log; done

  # iterate over any arguments provided
  for arg; do echo "$arg" >> ~/logfile.log; done
}

Log'''
      }
    }

  }
}