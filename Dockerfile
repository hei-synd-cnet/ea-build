FROM gradle:4.4.0-jdk8 as init

COPY . /app 
WORKDIR /app

USER root

COPY ./minecraft /home/gradle/.gradle/caches/minecraft
RUN ./gradlew setupCIWorkspace

ENTRYPOINT [ "/bin/bash", "-l", "-c" ]
CMD [ "./update_and_build.sh" ]
