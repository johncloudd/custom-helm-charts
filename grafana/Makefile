# Deploy grafana with helm

GRAFANA_AWS_ACCESS_KEY ?= "Redact"
GRAFANA_AWS_SECRET_ACCESS_KEY ?= "redact"

MYSQL_PASSWORD ?= "abc123"

deploy: package install

package:
	helm package -d ./ .

install: delete
	helm install --name grafana \
	-f values.yaml \
	--set external_storage.aws_access_key=${GRAFANA_AWS_ACCESS_KEY} \
	--set external_storage.aws_secret_key=${GRAFANA_AWS_SECRET_ACCESS_KEY} \
	--set mysql.mysql_password=${MYSQL_PASSWORD} \
	grafana-0.6.1.tgz

delete:
	helm delete --purge grafana | true

