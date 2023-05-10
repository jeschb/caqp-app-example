FROM adoptopenjdk/openjdk11
RUN apt-get update -qq \
    && apt-get install -qqy apt-transport-https ca-certificates curl net-tools iputils-ping
COPY target/*.jar /app.jar
ENTRYPOINT ["java","-jar","/app.jar"]