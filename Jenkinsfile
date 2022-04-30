pipeline {
  agent any
  stages {
    stage('Test') {
      parallel {
        stage('Test') {
          steps {
            sh 'echo "Test"'
          }
        }

        stage('Check for pom file') {
          steps {
            fileExists 'pom.xml'
          }
        }

      }
    }

    stage('Execute figlet file') {
      steps {
        sh '''sudo yum makecache
&& sudo yum -y install figlet
'''
      }
    }

  }
}