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
      steps {
        sh 'echo \'Huhu\''
      }
    }
    stage('Notify') {
      steps {
        slackSend(message: 'pipeline ended', failOnError: true, color: 'good')
      }
    }
  }
}