FROM openjdk:8
EXPOSE 8080
COPY target/docker-demo.jar docker-demo.jar
ENTRYPOINT ["java","-jar","/docker-demo.jar"]