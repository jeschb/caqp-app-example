FROM eclipse-temurin:11.0.19_7-jdk-ubi9-minimal
COPY target/*.jar /app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
EXPOSE 8080/tcp