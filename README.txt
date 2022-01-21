Commands to run Docker in Docker-----
To Build the Image:
   docker build -t koteswararao221/docinfinal:V1 .
To Run the image:
   docker run -d --name dind --privileged koteswararao221/docinfinal:V1
To open terminal:
   docker exec -it dind bash 
To know the docker version inside of that container:
   docker --version
   docker ps 
   etc......
   
