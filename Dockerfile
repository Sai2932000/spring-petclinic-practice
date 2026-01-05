  1 # ---------- Build stage ----------
  2 FROM maven:3-eclipse-temurin-21-alpine AS build
  3 WORKDIR /src
  4 COPY . .
  5 RUN mvn -B package
  6
  7 # ---------- Runtime stage ----------
  8 FROM eclipse-temurin:21-jre-alpine AS final
  9
 10 LABEL author="saikumarthumma"
 11 LABEL project="learning"
 12 LABEL version="3.5.0"
 13
 14 # Create non-root user
 15 RUN addgroup -S spc && adduser -S spc -G spc -h /app
 16
 17 WORKDIR /app
 18
 19 # Copy JAR from build stage
 20 COPY --from=build --chown=spc:spc \
 21   /src/target/spring-petclinic-3.5.0-SNAPSHOT.jar app.jar
 22
 23 USER spc
 24
 25 EXPOSE 8080
 26 ENTRYPOINT ["java", "-jar", "app.jar"]
 27
