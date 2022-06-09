# Container image that runs your code
FROM openjdk:17.0.2-oraclelinux8

WORKDIR /app

# Download the riddlc bundle to /app
ADD https://oss.sonatype.org/service/local/repositories/comreactific-1076/content/com/reactific/riddlc/0.5.6/riddlc-0.5.6.tgz .

# Extract the bundle into /app
RUN tar zxf /app/riddlc-0.5.6.tgz

# Code file to execute when the docker container starts up
ENTRYPOINT ["/app/riddlc-0.5.6/bin/riddlc"]
