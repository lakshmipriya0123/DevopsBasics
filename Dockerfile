FROM tomcat:latest
COPY ./webapp.war /usr/local/tomcat/webapps
RUN cp -r /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
ENV rollbackupdate=true
COPY docker-entry.sh .
RUN chmod +x docker-entry.sh .
ENTRYPOINT ["/docker-entry.sh"]
