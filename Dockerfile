FROM maven:3.9.6-eclipse-temurin-21 AS mavenBuild

COPY pom.xml /build/

COPY synner-core /build/synner-core

COPY synner-server /build/synner-server

WORKDIR /build/

RUN apt update; apt install nodejs npm;

RUN sudo npm install -g bower

RUN cd /build/synner-server/src/main/resources/static/;bower install

RUN mvn clean package

FROM eclipse-temurin:21

COPY --from=mavenBuild /build/synner-server/target/synner-server-0.0.1-SNAPSHOT.jar /app/

COPY --from=mavenBuild /build/synner-server/target/lib /app/lib/

WORKDIR /app

ENTRYPOINT ["java", "-jar", "synner-server-0.0.1-SNAPSHOT.jar"]

