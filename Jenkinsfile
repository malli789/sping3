pipeline { 
    agent any  
    stages {  
              
        stage('Build') { 
            steps { 
               echo 'This is a minimal pipeline.' 
            }
        }
        stage ('mvn') {
            steps {
                sh 'mvn -Dmaven.test.failure.ignore=true install' 
            }
        }
       stage ('Building') {
          steps {
           sh '''
          docker run -i  -v /var/lib/jenkins/workspace/123:/src/test -w /src/test maven:latest   /bin/bash -c "mvn clean compile" 
          '''
      }
    }
    }
}
