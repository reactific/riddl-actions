# Container image that runs your code
FROM openjdk:17-alpine

WORKDIR /app
ADD riddlc-0.5.2-3-26669d6e-20220608-1128-SNAPSHOT.tgz .

# Code file to execute when the docker container starts up
ENTRYPOINT ["/app/riddlc-0.5.2-3-26669d6e-20220608-1128-SNAPSHOT/bin/riddlc"]