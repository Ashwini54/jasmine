# Dockerfile for building Jasmine image based on ubuntu
# Base Ubuntu image
FROM ubuntu:20.04

# Set the Environment variable for Time-zone 
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

#Specifying WORK DIRECTORY, copying and running Dependencies
WORKDIR /
COPY Dependencies.sh .
RUN chmod a+x Dependencies.sh && ./Dependencies.sh

#Set the environment variable for JAVA
ENV JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64/bin"  PATH=$PATH:$JAVA_HOME

# # cloning Jasmine repo
# RUN git clone https://github.com/jasmine/jasmine.git 
# RUN cd jasmine/spec/html && jasmine MatchersHtmlSpec.js
