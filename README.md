[![GitHub license](https://img.shields.io/github/license/bridgewwater/template-docker-golang-exec-build)](https://github.com/bridgewwater/template-docker-golang-exec-build)
[![GitHub latest SemVer tag)](https://img.shields.io/github/v/tag/bridgewwater/template-docker-golang-exec-build)](https://github.com/bridgewwater/template-docker-golang-exec-build/tags)
[![GitHub release)](https://img.shields.io/github/v/release/bridgewwater/template-docker-golang-exec-build)](https://github.com/bridgewwater/template-docker-golang-exec-build/releases)

# template-docker-golang-exec-build

[![docker version semver](https://img.shields.io/docker/v/template-hub-user/template-docker-golang-exec-build?sort=semver)](https://hub.docker.com/r/template-hub-user/template-docker-golang-exec-build)
[![docker image size](https://img.shields.io/docker/image-size/template-hub-user/template-docker-golang-exec-build)](https://hub.docker.com/r/template-hub-user/template-docker-golang-exec-build)
[![docker pulls](https://img.shields.io/docker/pulls/template-hub-user/template-docker-golang-exec-build)](https://hub.docker.com/r/template-hub-user/template-docker-golang-exec-build/tags?page=1&ordering=last_updated)

- docker hub see [https://hub.docker.com/r/template-hub-user/template-docker-golang-exec-build](https://hub.docker.com/r/template-hub-user/template-docker-golang-exec-build)

## usage

To display help:

```bash
$ docker run --rm -i template-hub-user/template-docker-golang-exec-build --help
```

use as exec:

```bash
$ sudo curl -L --fail https://raw.githubusercontent.com/bridgewwater/template-docker-golang-exec-build/main/run.sh -o /usr/local/bin/golang-project-temple-base
$ sudo chmod +x /usr/local/bin/golang-project-temple-base
# then check
$ golang-project-temple-base --help
```

## source repo

[https://github.com/bridgewwater/template-docker-golang-exec-build](https://github.com/bridgewwater/template-docker-golang-exec-build)

### todo-list

- rename `bridgewwater/template-docker-golang-exec-build` to new github url
- go cli repo [https://github.com/bridgewwater/golang-project-temple-base](https://github.com/bridgewwater/golang-project-temple-base)
- rename go cli target version `GO_PKG_RELEASE_VERSION=2.1.0` (do not add prefix `v`)
- rename go cli target GO_SRC_PATH `github.com/bridgewwater/golang-project-temple-base`
- rename go cli target url `https://${GO_ENV_PACKAGE_NAME}.git`
- rename go cli target Build PATH `build/${GO_ENV_ROOT_BUILD_BIN_NAME}`
- rename go cli target exec build entrance path `cmd/golang-project-temple-base/main.go` to new
- rename go cli target `golang-project-temple-base` to new exec tools name
- rename go cli target build flag `-installsuffix cgo` to new
- rename go cli target ENTRYPOINT `/bin/golang-project-temple-base`
- rename local `INFO_TEST_BUILD_DOCKER_CONTAINER_ARGS` at Makefile
- rename docker hub user `template-hub-user` to new org or user
- rename docker hub `template-hub-user/template-docker-golang-exec-build` to new docker image name
- add [secrets](https://github.com/bridgewwater/template-docker-golang-exec-build/settings/secrets/actions) `New repository secret` name `DOCKERHUB_TOKEN` from [hub.docker](https://hub.docker.com/settings/security)
- change `DOCKER_IMAGE_PLATFORMS: linux/amd64,linux/arm64/v8` to your need [docker buildx](https://docs.docker.com/buildx/working-with-buildx/)
  - also change `jobs.docker-image-buildx.strategy.matrix.docker_image.[platform]` same as `DOCKER_IMAGE_PLATFORMS`
- change `push_remote_flag: ${{ github.event.pull_request.merged == true }}` to let latest tag push to docker hub

### env

- minimum go version: go 1.18
- change `go 1.18`, `^1.18`, `1.18.10-buster`, `1.18.10` to new go version

### dev mode

```bash
# see help
$ make help
# see or check build env
$ make env

# fast build
$ make all
# clean build
$ make clean

# then test build as test/Dockerfile
$ make dockerTestRestartLatest
# clean test build
$ make dockerTestPruneLatest
```

## Contributing

[![Contributor Covenant](https://img.shields.io/badge/contributor%20covenant-v1.4-ff69b4.svg)](.github/CONTRIBUTING_DOC/CODE_OF_CONDUCT.md)
[![GitHub contributors](https://img.shields.io/github/contributors/bridgewwater/template-docker-golang-exec-build)](https://github.com/bridgewwater/template-docker-golang-exec-build/graphs/contributors)

We welcome community contributions to this project.

Please read [Contributor Guide](.github/CONTRIBUTING_DOC/CONTRIBUTING.md) for more information on how to get started.

请阅读有关 [贡献者指南](.github/CONTRIBUTING_DOC/zh-CN/CONTRIBUTING.md) 以获取更多如何入门的信息
