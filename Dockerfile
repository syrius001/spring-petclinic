FROM anapsix/alpine-java
LABEL maintainer="muhammed.uysal@etiya.com"
CMD ["java","-jar","/home/spring-petclinic-1.5.1.jar"]
