FROM amazoncorretto:17-alpine-jdk

WORKDIR /usr/app
COPY build/libs/*.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
