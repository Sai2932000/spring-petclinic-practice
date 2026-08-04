FROM maven:3-eclipse-temurin-21-alpine AS build
WORKDIR /app

COPY pom.xml .

RUN mvn dependency:go-offline

COPY src ./src

RUN mvn -B clean package -DskipTests --no-transfer-progress

FROM eclipse-temurin:21-jre-alpine
 
LABEL author="saikumarthumma"
LABEL project="Spring PetClinic"
LABEL description="Spring Boot PetClinic application built using Maven and Docker multi-stage build"
LABEL maintainer="saikumarthumma"

RUN addgroup -S spc && \
    adduser -S spc-user -G spc -h /app
WORKDIR /app

COPY --from=build --chown=spc-user:spc /app/target/*.jar app.jar

USER spc-user

EXPOSE 8080

ENTRYPOINT [ "java", "-jar", "app.jar" ]
