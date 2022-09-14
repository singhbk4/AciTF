pipeline {
  agent any
  stages {
	stage ('terraform init') {
      steps {
        script {
                bat 'terraform init'
        }
      }
    }
    stage ('terraform plan') {
      steps {
        script {
                bat 'terraform plan'
            }
          }
        }
    stage ('terraform apply') {
      steps {
        script {
                bat 'terraform apply -auto-approve'
            }
          }
        }
    // stage ('terraform destroy') {
    //   steps {
    //     script {
    //             bat 'terraform destroy -auto-approve'
    //         }
    //       }
    //     }
    stage ('Successfully executed') {
      steps {
        echo 'done'
          }
        }
      }
    }
