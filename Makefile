.PHONY: test check clean dist all

TOP_DIR := $(shell pwd)

# default latest
ENV_DIST_VERSION =latest
ROOT_NAME =template-docker-golang-exec-build

# MakeImage.mk settings start
ROOT_OWNER =bridgewwater
ROOT_PARENT_SWITCH_TAG :=3.19.0
# for image local build
INFO_TEST_BUILD_DOCKER_PARENT_IMAGE =alpine
INFO_BUILD_DOCKER_FILE =Dockerfile
INFO_TEST_BUILD_DOCKER_FILE =build.dockerfile
INFO_TEST_BUILD_DOCKER_CONTAINER_ARGS =
# MakeImage.mk settings end

include z-MakefileUtils/MakeImage.mk

env: dockerEnv

all: dockerTestRestartLatest

clean: dockerTestPruneLatest

help: helpDocker
	@echo "Before run this project in docker must install docker"
