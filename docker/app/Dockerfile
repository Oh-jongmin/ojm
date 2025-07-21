FROM tomcat:9.0.53-jdk8-openjdk

RUN apt update && apt install -y unzip

RUN rm -rf /usr/local/tomcat/webapps/ROOT

COPY petclinic.war /tmp/petclinic.war
RUN mkdir /usr/local/tomcat/webapps/ROOT && \
    unzip /tmp/petclinic.war -d /usr/local/tomcat/webapps/ROOT

RUN rm -f /usr/local/tomcat/webapps/ROOT/WEB-INF/classes/spring/datasource-config.xml

COPY datasource-config.xml /usr/local/tomcat/webapps/ROOT/WEB-INF/classes/spring

