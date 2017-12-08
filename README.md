# Raspberry Pi 1 Gitea 1.3.0 Docker Image With Alpine Linux

[![Build Status](https://travis-ci.org/offtechnologies/docker-arm32v6-gitea.svg?branch=master)](travis-ci.org/offtechnologies/docker-arm32v6-gitea)
[![This image on DockerHub](https://img.shields.io/docker/pulls/offtechnologies/docker-arm32v6-gitea.svg)](https://hub.docker.com/r/offtechnologies/docker-arm32v6-gitea/)
[![](https://images.microbadger.com/badges/version/offtechnologies/docker-arm32v6-gitea.svg)](https://microbadger.com/images/offtechnologies/docker-arm32v6-gitea "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/offtechnologies/docker-arm32v6-gitea.svg)](https://microbadger.com/images/offtechnologies/docker-arm32v6-gitea "Get your own image badge on microbadger.com")


[offtechurl]: https://offtechnologies.gthub.io

[![offtechnologies](https://raw.githubusercontent.com/offtechnologies/offtechnologies.github.io/master/logo.png)][offtechurl]

Raspberry Pi 1/0 compatible Docker base image with Alpine Linux and Gitea.

## Credits
- [klud1](https://github.com/go-gitea/gitea/issues/531#issuecomment-289451101)

## 1.0.0 - 2017-12-08
* first release
* Gitea 1.3.0
* Custom base image: Alpine Linux arm32v6 ver 3.7 with qemu-arm-static
* Tested on Raspberry Pi 1 Model B Rev 2 with  Raspbian 4.9.51-1+rpi3 (2017-10-22) armv6l GNU/Linux and Docker v17.10.0-ce (It looks Docker 17.11.0 has the problem. sudo apt install docker-ce=17.10.0~ce-0~raspbian)
