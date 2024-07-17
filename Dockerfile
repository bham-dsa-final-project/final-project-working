# Use an official OpenJDK runtime as a parent image
FROM openjdk:latest

# Set the working directory
WORKDIR /app

# Copy the JAR file
COPY JavaFiles/java-file.jar /app/java-file.jar/

# Run the JAR file
ENTRYPOINT ["java", "-jar", "java-file.jar"]
