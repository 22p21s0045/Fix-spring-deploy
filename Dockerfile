FROM maven:3.8.3-openjdk-17
COPY . /backendAPI
WORKDIR /backendAPI
RUN mvn clean package
ENTRYPOINT ["java","-jar","/backendAPI/target/*.jar"]
