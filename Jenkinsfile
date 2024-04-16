@Library ('My-Jenkins-SharedLibrary')_
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
        script{
         checkout()
      }
      }
    }
    stage('build'){
        steps{
            script{
             build()
            }
        }
    }
  }
}
