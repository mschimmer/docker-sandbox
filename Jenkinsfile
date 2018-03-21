pipeline {
  agent any
  stages {
    stage('Initialize') {
      steps {
        waitUntil() {
          input(message: 'FirstInput', id: 'FirstInput', ok: 'DoIt')
        }
        
        echo 'huhu'
      }
    }
  }
}