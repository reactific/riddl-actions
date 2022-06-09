# Container image that runs your code
FROM openjdk:11-jre

WORKDIR /app
ADD https://oss.sonatype.org/service/local/repositories/comreactific-1076/content/com/reactific/riddlc/0.5.5/riddlc-0.5.5.tgz .

# Code file to execute when the docker container starts up
ENTRYPOINT ["/app/riddlc-0.5.5/bin/riddlc"]
