FROM openjdk:13
# set a health check
CMD curl -f http://127.0.0.1:8000 || exit 1
EXPOSE 8080
COPY target/docker-demo.jar docker-demo.jar
ENTRYPOINT ["java","-jar","/docker-demo.jar"]