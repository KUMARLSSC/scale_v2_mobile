def appname ="Runner"
def xcarchive = "${appname}.carchive"

pipeline {
    agent any
    
    stages {
        
        stage ('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('CLEAN') {
            steps {
                bat '''
                  flutter clean                                                                        
                  '''
            }
        }
        stage('GET_PACKAGES') {
            steps {
                bat '''
                  flutter pub get                                                                          
                  '''
            }
        }
        stage('BUILD') {
            steps {
                bat '''
                  flutter build apk --release                                                                             
                  '''
            }
        }
    }
    post{
        success{
            emailext body: '''Hi Kumar,
  The ScaleIndia_Pipeline was Runned Successfully''', subject: 'ScaleIndia_Pipeline ', to: 'kumaresan@leatherssc.org'
        }
    }
}
