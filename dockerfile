FROM ubuntu:22.04

RUN apt update && \
    apt-get install -y openjdk-17-jdk maven

WORKDIR /app

COPY . .

RUN mvn clean package

EXPOSE 8080

CMD ["java", "-jar", "target/spring-petclinic-4.0.0-SNAPSHOT.jar"]