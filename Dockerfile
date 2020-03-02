FROM openjdk:11-jre-slim-buster
EXPOSE 8081
EXPOSE 8080

ENV BACKEND_HOSTNAME=localhost

ADD backend/target/todo-backend.jar /usr/local/todo-backend/todo-backend.jar
ADD frontend/target/todo-frontend.jar /usr/local/todo-frontend/todo-frontend.jar
ADD start.sh /usr/local/start.sh

ENTRYPOINT [ "bash", "/usr/local/start.sh" ]

