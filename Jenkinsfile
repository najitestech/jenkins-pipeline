pipeline {
  agent any
  stages {
    stage('Declarative') {
      parallel {
        stage('Declarative') {
          steps {
            sh '''cal
git --version
whoami'''
          }
        }

        stage('Check for POM') {
          steps {
            fileExists 'pom.xml'
          }
        }

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