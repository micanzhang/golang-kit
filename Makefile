TAG = $(TRAVIS_GO_VERSION)
ifeq (tip,$(TAG))
        TAG =
else ifeq (1.14 $(TAG))
        TAG =
endif

build:
        docker build --no-cache -f Dockerfile$(TAG) -t micanzhang/golang-kit .
