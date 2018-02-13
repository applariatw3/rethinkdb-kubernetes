IMAGE=applariat/rethinkdb-k8
TAG=2.3.6

probe:
	./build-probe.sh

image: probe
	docker build -t ${IMAGE}:${TAG} .

push: image
	docker push ${IMAGE}:${TAG}
