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
        sh 'terraform init'
      }
    }
    stage('validate'){
      steps{
        sh 'terraform validate'
      }
    }
    stage('plan'){
      steps{
        sh 'terraform plan'
      }
    }
  }
}
