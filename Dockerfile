From openjdk :11
EXPOSE 8080
ADD target/mycompany-app.war  mycompany-app.war 
ENTRYPOINT ["java","-jar","/mycompany-app.war "]
