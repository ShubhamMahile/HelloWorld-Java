pipeline {
    agent any
    stages {
        stage("Clone Code") {
            steps {
               echo "Cloning the Code"
               git url:"https://github.com/ShubhamMahile/HelloWorld-Java.git", branch:"main"
            }
        }
        stage("Build") {
            steps {
               echo "Building an Image"
               bat "docker build -t HelloWorld-Java ."
            }
        }
         stage("Push to docker hub") {
            steps {
                 echo "Pushing an Image to Docker Hub"
                 withCredentials([usernamePassword(credentialsId: "dockerHub", usernameVariable: "dockerHubUser", passwordVariable: "dockerHubPass")])
                 {
                   bat "docker tag HelloWorld-Java ${env.dockerHubUser}/HelloWorld-Java:latest"
                   bat "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPass}"
                   bat "docker push ${env.dockerHubUser}/HelloWorld-Java:latest"
                 }
            }
        }
        stage("Deploy") {
            steps {
                 echo "Deploying Container"
                 bat "docker-compose down && docker-compose up -d"
            }
        }
    }
}
