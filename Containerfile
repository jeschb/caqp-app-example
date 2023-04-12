FROM registry.redhat.io/openjdk/openjdk-11-rhel7
COPY target/*.jar /app.jar
ENTRYPOINT ["java","-jar","/app.jar"]