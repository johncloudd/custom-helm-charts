# custom-helm-charts

## Setup

* Install Helm
* Tweak `values.yaml` as needed.

* This uses the [External DNS Project](https://github.com/kubernetes-incubator/external-dns).

## Notes

* MediaWiki chart does not require external dns.  Toggle the hostname feature off with `externalDns: false`
  in the chart's values.yaml file.
