FROM openjdk:8-jdk-alpine

LABEL maintainer="carlospavanetti.silvaprado@gmail.com"

VOLUME /tmp

EXPOSE 8080

ARG JAR_FILE
ADD ${JAR_FILE} app.jar

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar"]
