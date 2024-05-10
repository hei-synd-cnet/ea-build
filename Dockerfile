FROM gradle:4.4.0-jdk8

# For permissions issues
USER root

# Copy necessary files in /app
COPY . /app 
WORKDIR /app

# Replace cached gradle dependencies with the ones in the repo
COPY ./minecraft /home/gradle/.gradle/caches/minecraft

# Set up the workspace at build time so the runtime doesn't have to
RUN ./gradlew setupCIWorkspace

# Entrypoint for the container is either the command passed to docker run.. 
ENTRYPOINT [ "/bin/bash", "-l", "-c" ]
# ..or the default command that will run the build script
# The update_and_build.sh script is located in the ElectricalAge repo
CMD [ "./update_and_build.sh" ]
