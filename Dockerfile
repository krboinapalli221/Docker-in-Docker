FROM ubuntu:18.04
RUN apt-get update 
RUN apt-get install -y ca-certificates curl gnupg lsb-release  \ 
&& curl -fsSL https://download.docker.com/linux/ubuntu/gpg |  gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" |  tee /etc/apt/sources.list.d/docker.list > /dev/null \
&& apt-get update \
&& apt-get install -y docker-ce docker-ce-cli containerd.io 

ENTRYPOINT service docker start && /bin/bash && tail -f /dev/null


