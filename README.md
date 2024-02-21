# Docker_Practice  

## Things I have done:  
1. **Create testing file**  
    - Create `index.js` for testing using `touch index.js`.   
    - Inside `index.js`, there is a print statement "this is for docker testing purpose".  
    - Use `node index.js` to run.  
2. **Create Dockerfile**  
    - Create Dockerfile by using `touch Dockerfile`.  
    - Use `docker build -t docker_practice .` to create an image.  
    - The image will be stored in the Docker server (Daemon).  
    - Use `docker image ls` to show all images.  
    - Use `docker run docker_practice` to create a container based on the image.  
    - "This is for docker testing purpose" will be shown.
3. **Delete image and container**  
    - I noticed there is a no-name/untagged image and I would like to delete it.  
    - I first used `docker rmi 44d22e0ab391` (rmi stands for remove image), but there was an error: "Error response from daemon: conflict: unable to delete 44d22e0ab391 (must be forced) - image is being used by stopped container 67980bd16d6e".  
    - Thus, I had to delete the container first. I used `docker ps -a` to list all containers (both running and exited) and I did see the used container.  
    - I used `docker rm 67980bd16d6e` to remove the container. After that, `docker rmi 44d22e0ab391` executed successfully.  
4. **Push Dockerfile to Docker Hub**  
    - In the terminal, enter `docker login` to log into Docker Hub.  
    - Used `docker images` to show all the images on the Daemon.  
    - Create a tag for the image: `docker tag docker_practice xingruiricky/docker_practice:v1`.  
    - I then tried: `docker push 81338c7cefbf`, but there was an error: "An image does not exist locally with the tag: 81338c7cefbf". This is because you have to push using a tag (with username and tag) and not only the image ID.  
    - Then I used `docker push xingruiricky/docker_practice:v1` and it worked. :D  
    - Go to https://hub.docker.com to verify it was indeed uploaded.


