# Docker_Practice  

## Things I have done:  
    1. _ _Create testing file_ _  
        Create index.js for testing using touch index.js   
        inside index.js, there is an print statement "this is for docker testing purpose"  
        Use node index.js to run.  
    2. _ _Create Dockerfile_ _  
        Create Dockerfile by touch Dockerfile.  
        Use "docker build -t docker_practice ." to create image.  
        Image will be stored in the docker server(Deamon).  
        Use "docker image ls" to show all images.  
        Use "docker run docker_practice" to create a container based on image.  
        "this is for docker testing purpose" will be shown.
    3. _ _Delete image and container_ _  
        I noticed there is a no name/untagged image and I would like to delete it.  
        I first use "docker rmi 44d22e0ab391". (rmi stands for remove image) But there is an error "Error response from daemon: conflict: unable to delete 44d22e0ab391 (must be forced) - image is being used by stopped container 67980bd16d6e".  
        Thus I have to delete the container first. I used "docker ps -a" to list all the container(both running and exited) and I do see the used container.  
        I used "docker rm 67980bd16d6e" to remove the container. After that, docker rmi 44d22e0ab391 executed successfully.  
    4. _ _Push Dockerfile to Docker Hub_ _  
        In terminal, enter "docker login" to login into docker hub.  
        Used "docker images" to show all the images on Deamon.  
        Create tag for image: "docker tag docker_practice xingruiricky/docker_practice:v1".  
        I them try: "docker push 81338c7cefbf" but there is an error: "An image does not exist locally with the tag: 81338c7cefbf". This is because you have to push using tag(with username and tag) but not only image ID.  
        Then I use "docker push xingruiricky/docker_practice:v1" and it works. :D  
        Go to https://hub.docker.com to verified it was indeed uploaded.  



    

