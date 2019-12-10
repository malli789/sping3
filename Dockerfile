FROM malli789/test-tom
#FROM tomcat

#FROM tomcat
# Required for starting application up.
#RUN apk update && apk add /bin/sh
#ENV PROJECT_HOME /usr/local/tomcat/webapps
#VOLUME /usr/local/tomcat/webapps
RUN rm -rf /usr/local/tomcat/webapps/*
ADD target/Spring3HibernateApp.war /usr/local/tomcat/webapps/Spring3HibernateApp.war
VOLUME /usr/local/tomcat/webapps
EXPOSE 8080

