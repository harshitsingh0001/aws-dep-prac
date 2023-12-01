FROM openjdk:17
WORKDIR /app
COPY target/EC2-practice-0.0.1-SNAPSHOT.jar /app/ec2harshit.jar
ENTRYPOINT ["sh", "-c", "java -jar ec2harshit.jar"]