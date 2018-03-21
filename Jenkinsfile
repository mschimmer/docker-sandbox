pipeline {
  agent any
  stages {
    stage('Initialize') {
      steps {
        echo 'huhu'
      }
    }
    stage('Ask') {
      steps {
        input(message: 'Start now?', id: 'AskStartNow', ok: 'Do It')
      }
    }
    stage('Build') {
      agent any
      steps {
        sleep 5
        build 'do'
      }
    }
  }
}