#traemos la imagen de jdk
FROM openjdk:17-jdk-alpine
#creamos directorio en el container
WORKDIR /app
#copeamos el jar del target
COPY target/gateway-service-0.0.1-SNAPSHOT.jar gateway-service-app.jar
#exponemos puerto
EXPOSE 8080
#comando para correr container
ENTRYPOINT ["java","-jar","gateway-service-app.jar"]