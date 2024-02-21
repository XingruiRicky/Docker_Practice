# Docker_Practice  

## Things I have done:  
    1. Create index.js for testing using touch index.js   
        inside index.js, there is an print statement "this is for docker testing purpose"  
        Use node index.js to run.  
    2. Create Dockerfile by touch Dockerfile.  
        Use "docker build -t docker_practice ." to create image.  
        Image will be stored in the docker server(deamon).  
        Use "docker image ls" to show all images.  
        Use "docker run docker_practice" to create a container based on image.  
        "this is for docker testing purpose" will be shown.

