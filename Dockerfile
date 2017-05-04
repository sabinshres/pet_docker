
# use oracle jdk8:slim for base image
FROM frolvlad/alpine-oraclejdk8:slim

# Set the working directory to /app
WORKDIR /app/spring-petclinic

# Copy the current direcotry contents to our project folder in the docker
ADD . /app/spring-petclinic

EXPOSE 8080

# VOLUME /tmp
# ADD gs-spring-boot-docker-0.1.0.jar app.jar
# RUN sh -c 'touch /app.jar'
# ENV JAVA_OPTS=""
# ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]

CMD ["/app/spring-petclinic/mvnw", "spring-boot:run"]


