pipeline{
  agent any
  stages{
    stage('git clone'){
      steps{
        sh 'git clone https://github.com/ShaankariVoruganti/test/kub'
      }
    }
        stage('init'){
      steps{
        script {
          dir('kub'){
        sh 'terraform init'
          }
      }
    }
    stage('validate'){
      steps{
          script {
          dir('kub'){
        sh 'terraform validate'
          }
      }
    }
    stage('plan'){
      steps{
                script {
          dir('kub'){
        sh 'terraform plan'
      }
     }
    }
  }
}
