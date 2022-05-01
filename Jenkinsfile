pipeline {
  agent {
    docker {
      image 'centos'
      args '''sudo groupadd docker
sudo usermod -aG docker ${USER}
su -s ${USER}
docker run hello-world'''
    }

  }
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