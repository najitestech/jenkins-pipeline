pipeline {
  agent any
  stages {
    stage('Declarative') {
      steps {
        sh '''cal
git --version
whoami'''
      }
    }

    stage('Install') {
      steps {
        sh 'yum install tree -y'
      }
    }

    stage('Post Build') {
      steps {
        sh 'echo "Success"'
      }
    }

  }
}