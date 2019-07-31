# Use an official ubuntu image 18.10
FROM ubuntu:18.10

MAINTAINER Ashish 

# set workdir
WORKDIR /jenkins

# Copy the current directory contents into the container
ADD . /jenkins

# setting the permuissions
RUN chmod +x ./install-jenkins.sh

EXPOSE 8080

# container is started from your image
ENTRYPOINT ["./install-jenkins.sh"]
