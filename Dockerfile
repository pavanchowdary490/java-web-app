FROM tomcat:9.0-jdk8

LABEL maintainer="pavan"

RUN rm -rf /usr/local/tomcat/webapps/*

COPY target/web-app.war /usr/local/tomcat/webapps/ROOT.war
