FROM openjdk:17

RUN mkdir ec2dir

EXPOSE 8080

COPY target/EC2-practice-0.0.1-SNAPSHOT.jar /ec2dir/ec2harshit.jar

ENTRYPOINT ["sh", "-c", "java -jar ec2harshit.jar"]