NAMESPACE=skiftcreative
APP=supervisor

build:
	docker build --no-cache=true -t ${NAMESPACE}/${APP} .
#
#  You could use a completely different image to debug; maybe one with your
#  favorite tools already present:
#
#debug:
#	docker run --volumes-from=${APP} --interactive=true --tty=true ${NAMESPACE}/${APP} bash
#
#  The publish here will depend on your environment
#
run:
	docker run --name=${APP} --detach=true ${NAMESPACE}/${APP}
clean:
	docker stop ${APP} && docker rm ${APP}
reset: clean
	docker rmi ${NAMESPACE}/${APP}
interactive:
	docker run --rm --interactive --tty --name=${APP} ${NAMESPACE}/${APP} bash
push:
	docker push ${NAMESPACE}/${APP}
