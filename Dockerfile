# Stage 1: Builder - full JDK to compile the app
FROM eclipse-temurin:17-jdk-alpine AS builder
WORKDIR /build
COPY . .
RUN ./gradlew build --no-daemon -x test

# Stage 2: Runtime - slim JRE only, much smaller final image
FROM eclipse-temurin:17-jre-alpine AS runtime
WORKDIR /app
COPY --from=builder /build/build/libs/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
