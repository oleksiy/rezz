# syntax=docker/dockerfile:1.4

# name=build_container
FROM amazoncorretto:17-alpine-full AS rezz_web_server
#might skip this
RUN addgroup -S springboot
RUN adduser -S springuser -G springboot

# set up builder machine
WORKDIR /home/springuser/apps/rezz
ARG JAR_FILE=./target/*.jar
RUN ls -al
COPY $JAR_FILE ${WORKDIR}/rezz.jar

# set up web server
#FROM build_env AS web_server_dev
#FROM amazoncorretto:17-alpine-full as web_server_dev
#might skip this
#RUN addgroup -S springboot
#RUN adduser -S springuser -G springboot
#RUN mkdir -p /opt/rezz/target
#WORKDIR /opt/rezz/target

#ARG JAR_FILE=./target/*.jar
#COPY --from=build_env /opt/rezz/target/*.jar ${WORKDIR}/rezz.jar
EXPOSE 8080
#RUN java -jar ${WORKDIR}/rezz.jar
ENTRYPOINT ["java", "-jar", "/rezz.jar"]

