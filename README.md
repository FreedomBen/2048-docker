# Dockerized 2048!

Containerized version of https://github.com/mevdschee/2048.c

This source corresponds with Ben Porter's "Intro to Containers" presentation.  It is not currently available on YouTube, but when it is a link will be provided here.

These examples use Podman, but you can `s/podman/docker/g` and it should all work just fine.  The original presentation was developed with docker but moved to podman.

## Build

```sh
podman build -t freedomben/2048 .
```

## Run

```sh
podman run --rm -it freedomben/2048
```

## Push

```sh
podman push freedomben/2048
```

## Building and Running an iteration

```sh
cd iterations
podman build -t freedomben/2048 -f Dockerfile.<num> . \
 && podman run --rm -it freedomben/2048
```
