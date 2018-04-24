# custom-helm-charts

## Setup

* Install Helm
* Tweak `values.yaml` as needed.

* This uses the [External DNS Project](https://github.com/kubernetes-incubator/external-dns).

## MEDIAWIKI

* MediaWiki chart does not require external dns.  Toggle the hostname feature off with `externalDns: false`
  in the chart's values.yaml file.

## OWASP-ZAP
  * If deploying OWASP-ZAP to minikube, use minikube's service functionality to automatically open a browser.  Be sure to 
    go to the `/?anonym=true&app=ZAP` URL:

  `minikube service zap-owasp-zap`


