# This dockerfile uses extends image https://hub.docker.com/bridgewwater/golang-project-temple-base
# VERSION 1
# Author: template-hub-user
# dockerfile offical document https://docs.docker.com/engine/reference/builder/
# https://hub.docker.com/_/golang
FROM golang:1.18.10 AS golang-builder

ARG GO_PKG_RELEASE_VERSION=2.1.0
ARG GO_ENV_PACKAGE_NAME=github.com/bridgewwater/golang-project-temple-base
ARG GO_ENV_ROOT_BUILD_BIN_NAME=golang-project-temple-base
ARG GO_ENV_ROOT_BUILD_BIN_PATH=build/${GO_ENV_ROOT_BUILD_BIN_NAME}
ARG GO_ENV_ROOT_BUILD_ENTRANCE=cmd/golang-project-temple-base/main.go

ARG GO_PATH_SOURCE_DIR=/go/src
RUN mkdir -p ${GO_PATH_SOURCE_DIR}
WORKDIR ${GO_PATH_SOURCE_DIR}
# COPY $PWD ${GO_PATH_SOURCE_DIR}/${GO_ENV_PACKAGE_NAME}

RUN git clone https://${GO_ENV_PACKAGE_NAME}.git -b v${GO_PKG_RELEASE_VERSION} --depth=1 ${GO_ENV_PACKAGE_NAME}
WORKDIR ${GO_PATH_SOURCE_DIR}/${GO_ENV_PACKAGE_NAME}

# proxy golang
RUN go env -w "GOPROXY=https://goproxy.cn,direct"
RUN go env -w "GOPRIVATE='*.gitlab.com,*.gitee.com"

RUN export GOARCH=$(go env GOHOSTARCH)
RUN export GOOS=$(go env GOHOSTOS)

RUN go mod download -x

RUN CGO_ENABLED=0 \
  go build \
  -a \
  -installsuffix cgo \
  -ldflags '-w -s --extldflags "-static -fpic"' \
  -tags netgo \
  -o ${GO_ENV_ROOT_BUILD_BIN_PATH} \
  ${GO_ENV_ROOT_BUILD_ENTRANCE}

# https://hub.docker.com/_/alpine
FROM alpine:3.20.3

# ARG DOCKER_CLI_VERSION=${DOCKER_CLI_VERSION}
ARG GO_ENV_PACKAGE_NAME=github.com/bridgewwater/golang-project-temple-base
ARG GO_ENV_ROOT_BUILD_BIN_NAME=golang-project-temple-base
ARG GO_ENV_ROOT_BUILD_BIN_PATH=build/${GO_ENV_ROOT_BUILD_BIN_NAME}

ARG GO_PATH_SOURCE_DIR=/go/src

#RUN apk --no-cache add \
#  ca-certificates mailcap curl \
#  && rm -rf /var/cache/apk/* /tmp/*

RUN mkdir /app
WORKDIR /app

COPY --from=golang-builder ${GO_PATH_SOURCE_DIR}/${GO_ENV_PACKAGE_NAME}/${GO_ENV_ROOT_BUILD_BIN_PATH} /bin/
ENTRYPOINT [ "golang-project-temple-base" ]
# CMD ["golang-project-temple-base", "--help"]