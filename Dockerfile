# we will use openjdk 17 
FROM openjdk:17-jdk-slim
WORKDIR /app
RUN apt-get update && \
    apt-get install -y git && \
    git clone https://github.com/ShubhamMahile/HelloWorld-Java.git
    # Build the application
WORKDIR /app/HelloWorld-Java
# copy the packaged jar file into our docker image
RUN cp HelloWorld-Java/HelloWorld.jar . .
# set the startup command to execute the jar
CMD ["java", "-jar", "/HelloWorld.jar"]
