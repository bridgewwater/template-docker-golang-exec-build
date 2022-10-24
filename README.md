# template-docker-golang-exec-build

![docker version semver](https://img.shields.io/docker/v/bridgewwater/template-docker-golang-exec-build?sort=semver)
[![docker image size](https://img.shields.io/docker/image-size/bridgewwater/template-docker-golang-exec-build)](https://hub.docker.com/r/bridgewwater/template-docker-golang-exec-build)
[![docker pulls](https://img.shields.io/docker/pulls/bridgewwater/template-docker-golang-exec-build)](https://hub.docker.com/r/bridgewwater/template-docker-golang-exec-build/tags?page=1&ordering=last_updated)

- docker hub see [https://hub.docker.com/r/bridgewwater/template-docker-golang-exec-build](https://hub.docker.com/r/bridgewwater/template-docker-golang-exec-build)

## source repo

[https://github.com/bridgewwater/template-docker-golang-exec-build](https://github.com/bridgewwater/template-docker-golang-exec-build)

## useage

```bash
$ sudo curl -L --fail https://raw.githubusercontent.com/bridgewwater/template-docker-golang-exec-build/main/run.sh -o /usr/local/bin/httpstat
$ sudo chmod +x /usr/local/bin/httpstat
# then check
$ httpstat --help
# then check url like
$ httpstat https://www.google.com
```

## todo-list

- rename `bridgewwater/template-docker-golang-exec-build` to new github url
- rename `bridgewwater` to new org or user
- rename `template-docker-golang-exec-build` to new docker image name
- rename target url `https://github.com/bridgewwater/golang-project-temple-base.git`
- rename target version `v1.17.13`
- rename target GO_SRC_PATH `github.com/bridgewwater/golang-project-temple-base`
- rename target CLI enter file name `main.go`
- rename target `httpstat` to new exec tools name
- rename target `-o golang-project-temple-base` to new out exec name
- rename target exec path `github.com/bridgewwater/golang-project-temple-base/golang-project-temple-base` to new
- rename target ENTRYPOINT `/app/golang-project-temple-base`
- add [secrets](https://github.com/bridgewwater/template-docker-golang-exec-build/settings/secrets/actions) `New repository secret` name `ACCESS_TOKEN` from [hub.docker](https://hub.docker.com/settings/security)
- go cli repo [https://github.com/bridgewwater/golang-project-temple-base](https://github.com/bridgewwater/golang-project-temple-base)

## fast dev

```bash
$ make runContainerParentBuild

# then test build as test/Dockerfile
$ make dockerTestRestartLatest
# clean test build
$ make dockerTestPruneLatest
```

- just online use Dockerfile