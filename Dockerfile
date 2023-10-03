# we will use openjdk 17 
FROM openjdk:17-jdk-slim

# copy the packaged jar file into our docker image
COPY /HelloWorld.jar

# set the startup command to execute the jar
CMD ["java", "-jar", "/HelloWorld.jar"]
