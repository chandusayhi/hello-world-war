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
                withCredentials([usernamePassword(credentialsId: '23687aca-4b48-4135-9540-b0738756f4ef', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                    sh "docker login -u ${DOCKER_USERNAME} -p ${DOCKER_PASSWORD}"
                    sh "docker push chandusayhi/hello-world-war:1.0.5"
                }
            }
         }  
    }
}
