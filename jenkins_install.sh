# install Jenkins on Amazon Linux 2023

# #!/bin/bash (if you are using shell script)


#1 Update the system package index

sudo yum update –y

#2 Add the Jenkins repo using the following command:

sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo

#3 Import a key file from Jenkins-CI to enable installation from the package:

 sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

 sudo yum upgrade

# Install Java (Amazon Linux 2023, Jenkins requires Java to run):

sudo dnf install java-17-amazon-corretto -y # current jave $sudo yum install fontconfig java-17-openjdk

#Install Jenkins

sudo yum install jenkins -y

#Enable the Jenkins service to start at boot:

sudo systemctl enable Jenkins

#Start Jenkins as a service:

sudo systemctl start Jenkins
