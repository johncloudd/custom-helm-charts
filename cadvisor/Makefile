# Deploy cadvisor with helm

WORKSPACE ?= $(shell pwd)

deploy: package install

package:
	helm package -d ./ ${WORKSPACE}/cadvisor

install: delete
	helm install --name cadvisor \
	-f values.yaml \
	--namespace kube-system \
	${WORKSPACE}/cadvisor-0.1.0.tgz

delete:
	helm delete --purge cadvisor | true

