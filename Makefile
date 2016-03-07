NAMESPACE=skiftcreative
APP=supervisor
BASE=python
TAG=3.5

build:
	cd ${BASE}/${TAG} && docker build --no-cache=true -t ${NAMESPACE}/${APP}:${TAG} .
run:
	cd ${BASE}/${TAG} && docker run --name=${APP} --detach=true ${NAMESPACE}/${APP}:${TAG}
clean:
	docker stop ${APP} && docker rm ${APP}
reset: clean
	docker rmi ${NAMESPACE}/${APP}:${TAG}
interactive:
	docker run --rm --interactive --tty --name=${APP} ${NAMESPACE}/${APP} bash
push:
	docker push ${NAMESPACE}/${APP}:${TAG}
