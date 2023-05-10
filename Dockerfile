FROM adoptopenjdk/openjdk11
RUN apt-get update -qq \
    && apt-get install -qqy apt-transport-https ca-certificates curl
RUN apt-get update && apt-get install -qqy vim vim-tiny net-tools iputils-ping
COPY target/*.jar /app.jar
ENTRYPOINT ["java","-jar","/app.jar"]