# we will use openjdk 17 
FROM openjdk:17-jdk-slim
COPY /HelloWorld-Java/HelloWorld.jar . .
# set the startup command to execute the jar
CMD ["java", "-jar", "/HelloWorld.jar"]
