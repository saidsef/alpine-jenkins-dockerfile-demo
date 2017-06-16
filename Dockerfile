FROM jenkinsci/jenkins:2.65-alpine

# Copy plugins list to container
COPY plugins.txt /var/jenkins_home/plugins.txt
COPY groovy/init.groovy /var/jenkins_home/init.groovy.d/

# Install plugin
RUN /usr/local/bin/plugins.sh /var/jenkins_home/plugins.txt