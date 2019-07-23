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
          docker run -i   mavenugo/swarm-exec  /bin/bash -c "mvn test package" 
          '''
      }
    }
    }
}
