FROM java:8
WORKDIR /data
COPY ./card.application-1.0.0.jar  /data/ca.jar
EXPOSE 8880
CMD  ["java", "-jar", "/data/ca.jar"]