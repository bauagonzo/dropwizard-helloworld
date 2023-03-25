
FROM maven:latest

COPY pom.xml /usr/src/app/
COPY src /usr/src/app/src/
COPY hello-world.yml /usr/src/app/

WORKDIR /usr/src/app/
RUN mvn -X clean package

EXPOSE 8080
CMD ["java", "-jar", "target/dropwizard-helloworld-1.0-SNAPSHOT.jar", "server", "hello-world.yml"]

