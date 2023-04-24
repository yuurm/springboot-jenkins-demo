FROM openjdk:17-jdk-alpine
VOLUME /tmp
ADD target/springboot-jenkins-demo-0.0.1-SNAPSHOT.jar springboot-jenkins-demo.jar
ENTRYPOINT ["java","-jar","/springboot-jenkins-demo.jar"]
