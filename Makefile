image=bvdeenen/bvd-dev:latest
run:
	docker run -p 2000:22 -d --rm --name bvd ${image}
build:
	DOCKER_BUILDKIT=1 docker build -t ${image} .
kill:
	docker rm -f bvd 
docker-push:
	docker push ${image}
