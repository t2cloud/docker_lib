FROM tomcat

RUN mkdir -p /usr/local/tomcat/webapps/hello

COPY /hello /usr/local/tomcat/webapps/hello

EXPOSE 8080
CMD ["catalina.sh", "run"]




