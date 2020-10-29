FROM openliberty/open-liberty:kernel-java8-openj9-ubi

ENV SEC_TLS_TRUSTDEFAULTCERTS true
ENV SEC_IMPORT_K8S_CERTS true

ADD --chown=1001:0     ./server.xml                    /config/server.xml
ADD --chown=1001:0     ./bootstrap.properties          /config/bootstrap.properties
ADD --chown=1001:0     ./demoMetrics.war               /config/dropins
ADD --chown=1001:0     ./server.env                    /config/server.env

