FROM adoptopenjdk/openjdk11
RUN apt-get update -qq \
    && apt-get install -qqy apt-transport-https ca-certificates curl
COPY target/*.jar /app.jar
ENTRYPOINT ["java","-jar","/app.jar"]