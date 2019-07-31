# Use an official ubuntu image 18.10
FROM ubuntu:18.10

# set workdir
WORKDIR /jenkins

# Copy the current directory contents into the container
ADD . /jenkins

# setting the permuissions
RUN chmod +x ./install-jenkins.sh

# container is started from your image
ENTRYPOINT ["install-jenkins.sh"]
