FROM openjdk:17-jdk-alpine
RUN apk add --no-cache bash
VOLUME /tmp

EXPOSE 8082

ADD target/*.jar app.jar

ENV JAVA_OPTS=""
COPY wait-for-it.sh /wait-for-it.sh
RUN chmod +x /wait-for-it.sh
