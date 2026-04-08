FROM tomcat:9.0

COPY target/sample-webapp-1.0.war /usr/local/tomcat/webapps/sample-webapp.war

EXPOSE 8087

CMD ["catalina.sh", "run"]
