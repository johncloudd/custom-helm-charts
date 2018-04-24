# custom-helm-charts

# Table of Contents

   * [custom-helm-charts](#custom-helm-charts)
      * [Setup](#setup)
      * [MEDIAWIKI](#mediawiki)
      * [OWASP-ZAP](#owasp-zap)

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


  - ZAP Resources:
    * [Downloads](https://github.com/zaproxy/zaproxy/wiki/Downloads).
    * [ZAP-CLI](https://github.com/zaproxy/zaproxy/wiki/Docker#zap-cli).
    * [WebSwing](https://github.com/zaproxy/zaproxy/wiki/WebSwing).
    * [ZAP Project Home](https://www.owasp.org/index.php/OWASP_Zed_Attack_Proxy_Project).
