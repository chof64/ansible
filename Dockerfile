FROM ubuntu:22.04

#* Declare Environment Variables
ENV ANSIBLE_VERSION 2.9.17

#* Install Dependencies
RUN apt-get update; \
    apt-get install -y gcc python3; \
    apt-get install -y python3-pip; \
    apt-get clean all

#* Install Ansible
RUN pip3 install --upgrade pip; \
    pip3 install ansible
