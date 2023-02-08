BUILDDIR=build

all: pdf

pdf:
	docker run --rm -it --volume "$(PWD):/data/src" sharkmoos/pandoc-docker-report:latest
