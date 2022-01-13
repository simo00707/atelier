From openjdk :11
EXPOSE 8090
ADD target/my-app-1.0-SNAPSHOT.war  my-app-1.0-SNAPSHOT.war 
ENTRYPOINT ["java","-jar","/my-app-1.0-SNAPSHOT.war "]
