# Deploy cadvisor with helm

WORKSPACE ?= $(shell pwd)

deploy: client package install

client:
	helm init --client-only

package:
	helm package -d ./ ${WORKSPACE}/

install: delete
	helm install --name cadvisor \
	-f values.yaml \
	${WORKSPACE}/cadvisor-0.1.0.tgz

delete:
	helm delete --purge cadvisor | true

