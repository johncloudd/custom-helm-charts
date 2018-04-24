# Deploy zap with helm

deploy: package install

package:
	helm package -d ./ .

install: delete
	helm install --name owasp-zap \
	-f values.yaml \
	owasp-zap-0.1.0.tgz

delete:
	helm delete --purge owasp-zap | true

