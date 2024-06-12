FROM tomcat:9

WORKDIR /usr/local/tomcat

RUN mv webapps.dist/*webapps

COPY target/welcomeapp.war wenapps

EXPOSE 8080

CMD["usr/local/tomcat/bin/catalina.sh","RUN"]