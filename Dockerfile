# Pull all base image which will give all required tools and libs
FROM openjdk:17-jdk-alpine

# Create Working Directory
WORKDIR /app

# Copy all code and files to docker container
COPY src/Main.java /app/Main.java

# Run Compilation Command
RUN  javac Main.java

#  Above
#  We can override at run time
CMD ["java","Main"]