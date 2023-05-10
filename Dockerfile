FROM eclipse-temurin:11.0.18_10-jdk-alpine
RUN apk add curl
COPY target/*.jar /app.jar
ENTRYPOINT ["java","-jar","/app.jar"]