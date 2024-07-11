# Stage 1: Build stage
FROM maven:3.9-eclipse-temurin-21-alpine AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Stage 2: Run stage
FROM openjdk:21-slim
WORKDIR /app
RUN useradd -m springuser
RUN chown -R springuser:springuser /app
USER springuser
COPY --from=build /app/target/jumpstart-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
