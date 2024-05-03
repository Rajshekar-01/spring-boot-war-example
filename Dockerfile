# Use the Tomcat 9 base image
FROM tomcat:9

# Remove the default ROOT application
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the .war files from the target directory to the Tomcat webapps directory
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 for Tomcat
EXPOSE 8081

# Command to start Tomcat
CMD ["catalina.sh", "run"]

