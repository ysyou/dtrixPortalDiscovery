FROM java:8-alpine

COPY target/Discovery-1.0.0.jar Discovery.jar

EXPOSE 8761

ENTRYPOINT ["java","-Duser.timezone=Asia/Seoul","-Djava.security.egd=file:/dev/./urandom","-jar","Discovery.jar"]