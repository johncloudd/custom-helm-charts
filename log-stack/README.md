# log-stack


## Notes and Crap:
* The logstash image is public - it contains the maxmind database.
* Note this setup uses annotations that work with external dns and k8s AWS provider tree.
  * External dns uses the domain and tld attributes in the `values.yaml` file.
* This is meant for installation setup in us-east-2.
* Respect the anti affy rules or your data nodes won't come up.
* Respect nodeselector rules.

* This will create a four data node/master, 3 client node es cluster.
* This will deploy fluentd to all nodes including masters.
* This setups up logstash.
  * logstash uses es input plugin to pull from logstash and do some processing with geocities maxmind db for geo_point objects.
  * in order to use this as a visualization in kibana or grafana you must create a template with a mapping that specifies
    the location field as a geo_point type:

```
ex:
PUT _template/filebeat

{
  "order": 0,
  "template": "filebeat-filtered-*",
  "settings": {},
  "mappings": {
    "_default_": {
      "properties": {
        "geoip.location": {
          "type": "geo_point"
        }
      }
    }
  }
}
```

  * You'll now be able to able to visualize your lat / long points.

* Example Deployment:
```
PACKAGE=`helm package .`
helm install --name log-stack \
             --set domain="prominentedge" \
             --set tld="com" \
             --set logstash_image.logstash_tag="${TAG}" \
             -f values.yaml \
             $PACKAGE
```

