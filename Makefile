.PHONY: test check clean dist

TOP_DIR := $(shell pwd)

ENV_DIST_VERSION=latest

ROOT_BUILD_OS := alpine

ROOT_BUILD_FOLDER ?= build
ROOT_BUILD_PATH ?= ./${ROOT_BUILD_FOLDER}
ROOT_SCRIPT_FOLDER ?= dist
ROOT_LOG_PATH ?= ./log
ROOT_DIST ?= ./out

include MakeDocker.mk

env: dockerEnv
	@echo "====== show root build evn start" =====
	@echo ""
	@echo "ROOT_BUILD_OS                  ${ROOT_BUILD_OS}"
	@echo "ROOT_BUILD_FOLDER              ${ROOT_BUILD_FOLDER}"
	@echo "ROOT_BUILD_PATH                ${ROOT_BUILD_PATH}"
	@echo "ROOT_SCRIPT_FOLDER             ${ROOT_SCRIPT_FOLDER}"
	@echo "ROOT_LOG_PATH                  ${ROOT_LOG_PATH}"
	@echo "ROOT_DIST                      ${ROOT_DIST}"
	@echo ""
	@echo "====== show root build evn en" =====


checkBuildPath:
	@if [ ! -d ${ROOT_BUILD_PATH} ]; then \
	mkdir -p ${ROOT_BUILD_PATH} && echo "~> mkdir ${ROOT_BUILD_PATH}"; \
	fi

checkDistPath:
	@if [ ! -d ${ROOT_DIST} ]; then \
	mkdir -p ${ROOT_DIST} && echo "~> mkdir ${ROOT_DIST}"; \
	fi

cleanBuild:
	@if [ -d ${ROOT_BUILD_PATH} ]; then \
	rm -rf ${ROOT_BUILD_PATH} && echo "~> cleaned ${ROOT_BUILD_PATH}"; \
	else \
	echo "~> has cleaned ${ROOT_BUILD_PATH}"; \
	fi

cleanLog:
	@if [ -d ${ROOT_LOG_PATH} ]; then \
	rm -rf ${ROOT_LOG_PATH} && echo "~> cleaned ${ROOT_LOG_PATH}"; \
	else \
	echo "~> has cleaned ${ROOT_LOG_PATH}"; \
	fi

cleanDist:
	@if [ -d ${ROOT_DIST} ]; then \
	rm -rf ${ROOT_DIST} && echo "~> cleaned ${ROOT_DIST}"; \
	else \
	echo "~> has cleaned ${ROOT_DIST}"; \
	fi

cleanAll: cleanBuild cleanDist cleanLog
	@echo "clean all finish"

clean: cleanBuild cleanLog
	@echo "~> clean finish"

help: helpDocker
	@echo "-- helper root"
	@echo ""
	@echo "Before run this project in docker must check docker and network"
	@echo ""
	@echo "make clean - remove binary file and log files"
	@echo ""
	@echo "local test build use"
