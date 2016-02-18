FROM java:8
RUN apt-get update
RUN apt-get install wget
RUN wget http://www.eu.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
RUN tar xzvf apache-maven-3.3.9-bin.tar.gz
RUN bash -c "rm apache-maven-3.3.9-bin.tar.gz && mv apache-maven-3.3.9 /lib/maven && echo 'export PATH=\"/lib/maven/bin:$PATH\"' >> ~/.bashrc"
WORKDIR /usr/src/app
