# Use Tomcat image
FROM tomcat:9.0

# Remove default application
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file
COPY target/ajio.war /usr/local/tomcat/webapps/ROOT.war

# Expose port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
