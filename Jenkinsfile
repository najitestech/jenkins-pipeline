pipeline {
  agent any
  stages {
    stage('Test') {
      parallel {
        stage('Test') {
          steps {
            sh 'echo "Testing"'
          }
        }

        stage('Check for pom file') {
          steps {
            fileExists 'pom.xml'
          }
        }

        stage('Check for Dockerfile') {
          steps {
            fileExists 'Dockerfile'
          }
        }

      }
    }

    stage('Execute figlet file') {
      parallel {
        stage('Execute figlet file') {
          steps {
            sh 'date | figlet -f slant'
          }
        }

        stage('Install Packages') {
          steps {
            sh '''sudo yum install ansible -y
&& ansible --version'''
          }
        }

      }
    }

    stage('Aproval') {
      steps {
        input(message: 'Do you want to Proceed?', ok: 'OK')
      }
    }

  }
}