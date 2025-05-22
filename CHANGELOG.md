# Changelog

All notable changes to this project will be documented in this file. See [convention-change-log](https://github.com/convention-change/convention-change-log) for commit guidelines.

## [1.5.0](https://github.com/bridgewwater/template-docker-golang-exec-build/compare/v1.4.3...v1.5.0) (2025-05-22)

### ✨ Features

* update Docker Buildx bake workflows ([8c36fd4d](https://github.com/bridgewwater/template-docker-golang-exec-build/commit/8c36fd4dc8ea080fa2d5ee662c8d46cbe9882cfa))

### 👷‍ Build System

* update golang base image to 1.18.10 ([fe08c77d](https://github.com/bridgewwater/template-docker-golang-exec-build/commit/fe08c77d087780f953b147aef546c8228ecff32d))

## [1.4.3](https://github.com/bridgewwater/template-docker-golang-exec-build/compare/v1.4.2...v1.4.3) (2025-02-03)

### 📝 Documentation

* correct docker image name in README ([1dbafd55](https://github.com/bridgewwater/template-docker-golang-exec-build/commit/1dbafd55404cfd290e17472d22d271d388941bba))

### 👷‍ Build System

* update bake-action to v6 and add build timeout ([4beeec0e](https://github.com/bridgewwater/template-docker-golang-exec-build/commit/4beeec0eb8938c4bf40bef7dd4ed6973902ea3cb)), feat [#9](https://github.com/bridgewwater/template-docker-golang-exec-build/issues/9)

## [1.4.2](https://github.com/bridgewwater/template-docker-golang-exec-build/compare/v1.4.1...v1.4.2) (2024-11-08)

### 👷‍ Build System

* update Alpine base image to 3.20.3 ([c31342b8](https://github.com/bridgewwater/template-docker-golang-exec-build/commit/c31342b812758d882ba57aed0b5303c4610fcbd8))

## [1.4.1](https://github.com/bridgewwater/template-docker-golang-exec-build/compare/v1.4.0...v1.4.1) (2024-11-08)

### 📝 Documentation

* update contributing guidelines and code of conduct ([7e01964d](https://github.com/bridgewwater/template-docker-golang-exec-build/commit/7e01964d62ed30063237baa5c1a7c9c5232f57f4))

### 👷‍ Build System

* bump docker/bake-action from 4 to 5 ([66d15fea](https://github.com/bridgewwater/template-docker-golang-exec-build/commit/66d15fea7d1c0cc404b0d420a34cbc92e2a10caf))

## [1.4.0](https://github.com/bridgewwater/template-docker-golang-exec-build/compare/v1.3.0...v1.4.0) (2024-05-04)

### BREAKING CHANGE:

* change docker-bake.hcl config then use

### ✨ Features

* support `docker_bake_targets` ([15b9b5f6](https://github.com/bridgewwater/template-docker-golang-exec-build/commit/15b9b5f64bf58baf243e9f0b282e369cc2793bb7)), feat [#5](https://github.com/bridgewwater/template-docker-golang-exec-build/issues/5)

## [1.3.0](https://github.com/bridgewwater/template-docker-golang-exec-build/compare/v1.2.0...v1.3.0) (2024-05-03)

### ✨ Features

* add `ocker-build-no-cache` args and update bake config ([ebdb7af7](https://github.com/bridgewwater/template-docker-golang-exec-build/commit/ebdb7af759aac0c034a6ae24df6b6b991c40ceea))

## [1.2.0](https://github.com/bridgewwater/template-docker-golang-exec-build/compare/v1.1.0...v1.2.0) (2024-05-03)

### ✨ Features

* add .github/workflows/auto-merge-dependabot.yml ([4354bcb8](https://github.com/bridgewwater/template-docker-golang-exec-build/commit/4354bcb8d26c17ab80ca5d96e9549a55029fabd9))

### 👷‍ Build System

* bump convention-change/conventional-version-check ([9a3b6f4a](https://github.com/bridgewwater/template-docker-golang-exec-build/commit/9a3b6f4a70ecd67e56d258cf07e1eb3a1fa4c50c))

## [1.1.0](https://github.com/bridgewwater/template-docker-golang-exec-build/compare/v1.0.0...v1.1.0) (2024-04-26)

### ✨ Features

* change to use docker bake pipeline ([52a1a47e](https://github.com/bridgewwater/template-docker-golang-exec-build/commit/52a1a47ead6f8244833ff7a5cdc4bd49ab11b57e)), feat [#2](https://github.com/bridgewwater/template-docker-golang-exec-build/issues/2)

* add template-hub-user to change github docker cli ([f52fedd5](https://github.com/bridgewwater/template-docker-golang-exec-build/commit/f52fedd540636741e31b2b09ff5fecf0d9930338))

* add new bin path to let cli use more clear ([d930c22b](https://github.com/bridgewwater/template-docker-golang-exec-build/commit/d930c22b516f26a5a77081ef5152f6eff1be8243))

### 👷‍ Build System

* remove docker-image-tag push_remote_flag: false for template ([b7da2c96](https://github.com/bridgewwater/template-docker-golang-exec-build/commit/b7da2c9613871346da3fb8694f63825f02e9091a))

## 1.0.0 (2023-12-19)

### ✨ Features

* update actions/checkout@v3 ([fa676fc8](https://github.com/bridgewwater/template-docker-golang-exec-build/commit/fa676fc8367e264a2222d5395ed271812af1e051))

* update template file ([a4d3768e](https://github.com/bridgewwater/template-docker-golang-exec-build/commit/a4d3768ee19868dde30f88b90c8b6a537c58bf88))

* fix GO_PATH_SOURCE_DIR path error ([9321dbd8](https://github.com/bridgewwater/template-docker-golang-exec-build/commit/9321dbd8dea8dd9864b3674a1e2681bc6ea7ee37))

* update template for fast build ([a008a059](https://github.com/bridgewwater/template-docker-golang-exec-build/commit/a008a059e78c5d6c01907c4568180a653d400388))

* move useless readme.md ([e83da970](https://github.com/bridgewwater/template-docker-golang-exec-build/commit/e83da97066dfe7a1c6d1612e9570b640e0c0bf8d))

* update template ([052179ee](https://github.com/bridgewwater/template-docker-golang-exec-build/commit/052179ee118fdc3d284199a1d445c7c8ea6ffca7))

* add MakeDocker.mk for config more ([29641bd9](https://github.com/bridgewwater/template-docker-golang-exec-build/commit/29641bd93c4fb73ab68233b3a11e3f0ed90c3307))

* let less template in the project ([f6faaeec](https://github.com/bridgewwater/template-docker-golang-exec-build/commit/f6faaeecfa35e22cf5e6140fdaf8065d558c4de2))

### 👷‍ Build System

* close hub push at build tag ([8949f8ac](https://github.com/bridgewwater/template-docker-golang-exec-build/commit/8949f8ace0fe8d879bf2ae6cb7c838d2e62b5c1e))

* open platform linux/arm64/v8 ([9f0c0e7c](https://github.com/bridgewwater/template-docker-golang-exec-build/commit/9f0c0e7ca9d7d6fa20f01db03b0e558a127d0d88))

* change build way of github action flag for docker push ([57748ef1](https://github.com/bridgewwater/template-docker-golang-exec-build/commit/57748ef1d86a1365c01db6f2e2aad3e933f6edde))

* change push flat check by inputs ([4f8428ef](https://github.com/bridgewwater/template-docker-golang-exec-build/commit/4f8428ef053f116d24f1cf877303a8fdae76401b))

* bump actions/download-artifact from 3 to 4 ([57e6cd51](https://github.com/bridgewwater/template-docker-golang-exec-build/commit/57e6cd5140e7d87344e12b8b02c7c914e9ef6b6d))

* update full build of action for full ([605596f9](https://github.com/bridgewwater/template-docker-golang-exec-build/commit/605596f9b26d04a68418e60475a2b9dc63a7e570))

* update github action build ([cd320a7a](https://github.com/bridgewwater/template-docker-golang-exec-build/commit/cd320a7a580e241bf09fcab9ff8045c4cb392059))
