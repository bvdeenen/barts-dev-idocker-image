run:
	docker run -p 2000:22 -d --rm --name bvd bvdeenen/bvd-dev 
build:
	DOCKER_BUILDKIT=1 docker build -t bvdeenen/bvd-dev:latest .
kill:
	docker rm -f bvd 
