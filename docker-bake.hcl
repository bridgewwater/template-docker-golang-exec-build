variable "DEFAULT_TAG" {
  default = "template-docker-golang-exec-build:local"
}

// Special target: https://github.com/docker/metadata-action#bake-definition
target "docker-metadata-action" {
  tags = ["${DEFAULT_TAG}"]
}

// Default target if none specified
group "default" {
  targets = ["image-local"]
}

// https://docs.docker.com/build/bake/reference/#target
// show config as: docker buildx bake --print image
target "image" {
  inherits = ["docker-metadata-action"]
  context = "."
  dockerfile =  "Dockerfile"
}

target "image-local" {
  inherits = ["image"]
  output = ["type=docker"]
}

// must check by parent image support multi-platform
// doc: https://docs.docker.com/reference/cli/docker/buildx/build/#platform
// most of can as: linux/amd64 linux/386 linux/arm64/v8 linux/arm/v7 linux/arm/v6 linux/ppc64le linux/s390x
// show config as: docker buildx bake --print image-all
target "image-all" {
  inherits = ["image"]
  platforms = [
    "linux/amd64",
    "linux/arm64/v8"
  ]
}