# grafana

 
## Package:
`helm package -d ./ .`

## Deploy:
`helm install --name grafana -f values.yaml grafana-0.6.1.tgz`

## Purge:
`helm delete --purge grafana`

## Altogether:
`make deploy`
