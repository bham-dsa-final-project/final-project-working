# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Copy the JAR file
COPY Java\ files/java-file.jar /app/java-file.jar/

# Run the JAR file
ENTRYPOINT ["java", "-jar", "java-file.jar"]
