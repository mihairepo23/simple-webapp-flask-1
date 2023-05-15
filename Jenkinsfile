pipeline {
    agent any
        environment {
        dockerimage = "flaskapp"
    }
    stages {
      stage('Git Clone') {
        steps{
          git url:'https://github.com/mihairepo23/simple-webapp-flask-1.git', branch: 'master'
        }
      }
       stage ('build') {
           steps {
            sh "docker build -t ${dockerimage}:${BUILD_NUMBER} ."
           }
        }         
    } 
  }
