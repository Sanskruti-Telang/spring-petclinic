FROM ubuntu
RUN apt update \
    && apt-get install openjdk-17-jdk -y \
    && apt install maven -y \

#run mvn clean package

CMD ["java", "-jar", "target/spring-petclinic-4.0.0-SNAPSHOT.jar"]