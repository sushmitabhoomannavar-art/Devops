# Use Tomcat image
FROM tomcat:9.0

COPY target/ajio.war /usr/local/tomcat/webapps/ROOT

# Expose application port
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]