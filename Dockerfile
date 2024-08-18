FROM maven:3.8.8-amazoncorretto-17 AS base
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline
COPY src ./src
RUN mvn clean package -DskipTests

FROM gcr.io/distroless/java17-debian11
WORKDIR /app
COPY --from=base /app/target/*.jar /app/app.jar
COPY --from=base /app/src .
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "/app/app.jar" ]
