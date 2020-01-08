FROM google/cloud-sdk:slim

LABEL maintainer="Shawn Friedel <emailshawnf@gmail.com>"

RUN apt-get update && apt-get install -y \
docker.io \
&& rm -rf /var/lib/apt/lists/* 

RUN curl -LO \
https://storage.googleapis.com/kubernetes-release/release/v1.15.1/bin/linux/amd64/kubectl \
&& chmod u+x kubectl && mv kubectl /usr/local/bin/kubectl

COPY start.sh /start.sh

RUN chmod u+x start.sh

ENTRYPOINT ["/start.sh"]
