FROM tomcat:9-jre8-alpine
LABEL Author="Diego Delmiro"
RUN rm -rf /usr/local/tomcat/webapps/* && chmod 7777 /usr/local/tomcat/bin/*
ADD ../target/scooby-0.0.1-SNAPSHOT.jar /usr/local/tomcat/webapps/api.war
CMD ["catalina.sh","run"]