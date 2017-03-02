node() {
    registry_url = "https://index.docker.io/v1/" // Docker Hub
    docker_creds_id = "damien-dockerhub-crendentials" // name of the Jenkins Credentials ID
    build_tag = "testing" // default tag to push for to the registry
    gitRepositoryUrl = "https://github.com/dmariage/taiga.git"
    imageName = "damienma/taiga"
    
    //git gitRepositoryUrl
    checkout scm
    
    docker.withRegistry(registry_url, docker_creds_id) {
        
        stage('build') {
            taigaImage = docker.build("${imageName}:${env.BUILD_TAG}", '.')
        }
        
        stage('push') {
            taigaImage.push()
        }
        
        stage('push-latest') {
            taigaImage.push("latest")
        }
        
    }
    
}