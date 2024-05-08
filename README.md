# Docker-based build environment for the Electrical Age mod

[![Docker Hub](https://img.shields.io/docker/cloud/build/electricalage/build?label=Docker&style=flat)](https://hub.docker.com/r/electricalage/build)

This is a Docker-based environment used to build the Minecraft [Electrical Age](https://electrical-age.net/index.html) mod.

This repository contains the Gradle dependencies, files, and cache objects needed to build the Electrical Age mod.

To prevent compilation errors due to incompatibility with newer libraries and dependencies being old and unavailable, this image hosts the files locally and is used as a Docker-based environment for build.

This Docker image is pushed and available on the [Docker Hub](https://hub.docker.com/r/electricalage/build).
