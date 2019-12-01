FROM malli789/malli-tom
# Required for starting application up.
#RUN apk update && apk add /bin/sh
ENV PROJECT_HOME /usr/local/tomcat/webapps
VOLUME /usr/local/tomcat/webapps

COPY target/Spring3HibernateApp.war $PROJECT_HOME/spring-boot-mongo.war

WORKDIR $PROJECT_HOME
ENTRYPOINT ["java","-war","target/recruitment-service-0.0.1.war"]
