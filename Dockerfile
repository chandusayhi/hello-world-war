FROM ubuntu
WORKDIR /app
RUN apt update
RUN apt install maven -y
COPY . .
RUN mvn clean package
