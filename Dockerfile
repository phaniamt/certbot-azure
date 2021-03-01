FROM ubuntu:20.04
RUN apt-get update -y
RUN apt-get install certbot -y
RUN apt-get install software-properties-common -y
RUN apt-add-repository universe -y && apt-get update -y
RUN apt-get install python3-pip -y
RUN pip3 install certbot-azure
RUN pip3 install acme==1.8.0
RUN pip3 install cryptography==3.2
