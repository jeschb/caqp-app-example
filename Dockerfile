FROM eclipse-temurin:11.0.18_10-jdk-alpine
COPY target/*.jar /app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
EXPOSE 8080/tcp