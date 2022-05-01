pipeline {
  agent {
    node {
      label 'POD_LABEL'
    }

  }
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
        sh 'date | figlet -f slant'
      }
    }

    stage('Aproval') {
      steps {
        input(message: 'Do you want to Proceed?', ok: 'OK')
      }
    }

  }
}