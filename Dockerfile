FROM maven:3-eclipse-temurin-21-alpine AS build
WORKDIR /src
COPY . .
RUN mvn package

FROM eclipse-temurin:21-alpine AS final
LABEL author=saikumarthumma
LABEL project=learning
LABEL version=3.5.0
RUN adduser -D -h /app -s /bin/sh src
USER src
WORKDIR /app
COPY --from=builder --chown=spc:spc /spc/target/spring-petclinic-3.5.0-SNAPSHOT.jar /app/spring-petclinic-3.5.0-SHOT.jar
EXPOSE 8080
CMD [ "java", "-jar", "app.jar" ]
