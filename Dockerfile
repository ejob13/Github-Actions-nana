# Use a lightweight OpenJDK base image
FROM openjdk:17-jdk-slim

# Set work directory
WORKDIR /app

# Copy the JAR file (Gradle output) into the container
COPY build/libs/*.jar app.jar

# Expose port (adjust if your app runs on a different one)
EXPOSE 8080

# Run the app
ENTRYPOINT ["java", "-jar", "app.jar"]

