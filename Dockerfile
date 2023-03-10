FROM harness/delegate:latest

RUN apt update
RUN apt install python3 -y

# install gcloud 
RUN curl -o gcloud-download https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-417.0.1-linux-x86_64.tar.gz
RUN tar -xf gcloud-download -C ~
RUN ~/google-cloud-sdk/install.sh -q
ENV PATH="$PATH:/root/google-cloud-sdk/bin"
# RUN /bin/bash
# RUN PATH=$PATH:/root/google-cloud-sdk/bin

