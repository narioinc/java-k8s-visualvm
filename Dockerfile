FROM openjdk:14
COPY * /opt/app/
WORKDIR /opt/app
CMD ["java", \
"-Dcom.sun.management.jmxremote", \
"-Dcom.sun.management.jmxremote.port=1089", \
#"-Djava.rmi.server.hostname=127.0.0.1", \
"-Dcom.sun.management.jmxremote.local.only=false", \
"-Dcom.sun.management.jmxremote.authenticate=false", \
"-Dcom.sun.management.jmxremote.ssl=false", "HelloWorldApp"]
EXPOSE 8080
EXPOSE 1089
