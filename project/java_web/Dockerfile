FROM 10.0.0.140:5000/dev/tomcat

RUN mkdir -p /usr/local/tomcat/webapps/gogo

COPY /gogo /usr/local/tomcat/webapps/gogo

EXPOSE 8080
CMD ["catalina.sh", "run"]

