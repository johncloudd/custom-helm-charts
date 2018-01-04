# cadvisor


## Package:
`helm package .`

## Deploy:
`helm install --name cadvisor cadvisor-1.0.1.tgz`

## Notes:
* The `-set_*` argument flags inside the daemonset are just examples for using with influxdb.  Please see the 
  [official cadvisor](https://github.com/google/cadvisor) github repo for more configurations, or the [following](https://github.com/google/cadvisor/blob/master/docs/storage/influxdb.md)
  page for more options for influxdb args.
