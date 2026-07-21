FROM ubuntu:22.04

RUN apt update && \
    apt-get install -y openjdk-17-jdk maven

WORKDIR /app

COPY ./spring-petclinic-4.0.0-SNAPSHOT.jar /app

RUN chmod 755 /app/spring-petclinic-4.0.0-SNAPSHOT.jar

CMD ["java", "-jar", "target/spring-petclinic-4.0.0-SNAPSHOT.jar"]