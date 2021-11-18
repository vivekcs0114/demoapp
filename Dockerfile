# This is base image. We are using alpine light weight image with java-11 installed
FROM alpine:3.11
RUN apk --no-cache add openjdk11 --repository=http://dl-cdn.alpinelinux.org/alpine/edge/community

# This is our work directory
WORKDIR /work/
COPY target/demo.jar /work/application.jar

# set up permissions for user `1001`
RUN chmod 775 /work /work/application.jar \
  && chown -R 1001 /work \
  && chmod -R "g+rwX" /work \
  && chown -R 1001:root /work

# Expose port 9000 so other services can communicate
EXPOSE 9000

# Start application
ENTRYPOINT ["java","-jar","application.jar"]