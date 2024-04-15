 properties([
                        parameters([
                            choice(
                                choices: ['package', 'compile'], 
                                name: 'arg'
                            ),
                            string(
                                defaultValue: 'clean', 
                                name: 'version', 
                                trim: true
                            )
                        ])
                    ])
pipeline{
  agent any
  stages{
    stage('Demo'){
      steps{
        echo "Hello this is pipelinejob"
      }
    }
    stage('clone'){
      steps{
        sh 'rm -rf hello-world-war'
        sh 'git clone https://github.com/chandusayhi/hello-world-war.git'
      }
    }
    stage('build'){
        steps{
            sh 'mvn $version $arg'
        }
    }
    stage('deploy'){
        steps{
            sh 'whoami'
            sh 'scp /var/lib/jenkins/workspace/pipeline_demo/target/hello-world-war-1.0.0.war tomcat_user@172.31.81.248:/tmp/apache-tomcat-8.5.100/webapps/'
        }
    }
  }
}
