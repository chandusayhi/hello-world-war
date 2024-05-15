pipeline {
    agent any
        stages {
        stage('checkout') {
            steps {
                sh 'rm -rf hello-world-war'
                sh 'git clone https://github.com/chandusayhi/hello-world-war.git'
            }
        }
        stage('build') {
            steps {
                sh 'docker build -t chandusayhi/hello-world-war:1.0.5 .'
            }
        } 
         stage('publish') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'b56782ca-3ae8-4d76-a619-af228784bf7a', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                    sh "docker login -u ${DOCKER_USERNAME} -p ${DOCKER_PASSWORD}"
                    sh "docker push chandusayhi/hello-world-war:1.0.5"
                }
            }
         }  
    }
}
