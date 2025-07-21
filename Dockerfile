FROM tomcat:9.0.53-jdk8-openjdk

RUN rm -rf /usr/local/tomcat/webapps/ROOT

COPY petclinic_btc/target/petclinic.war /usr/local/tomcat/webapps/ROOT.war
