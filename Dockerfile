FROM linux:ubuntu6

MAINTAINER aizel.acson@gmail.com

# Enable EPEL for Node.js
RUN rpm -Uvh https://www.ubuntu.com/download/desktop/contribute?version=16.04.2&architecture=amd64http://download.fedoraproject.org/pub/epel/6/i386/epel-

#Install Node
RUN yum istall -y npm

# Copy app to /syn
COPY . /src

# Install app and dependencies into /src
RUN cd /src; nmp install

EXPOSE 8080

CMD cd /src && node ./app.js