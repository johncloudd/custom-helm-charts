# mediawiki

## Notes:
* Note - this is only meant to be run with the AWS provider for kubernetes.  If you need to run it on bare-kube,
  be sure to edit the `deployment.yaml` for your persistent storage option.
* This uses the `sqllite` backend by default.  You can change this by changing the `mountConfig` to false.  Skip to
  *custom setup*.

## Pre-Flight:

* This requires you create a persistent volume:
  `aws ec2 create-volume --availability-zone=us-east-2c --size=500 --volume-type=gp2 --profile pe`
* Be sure your IAM role that is attached to your instance(s) has permissions to attach EC2 volumes.
* Now, specify the outputted volume-id in the `values.yaml` file.

* If you are using external-dns, specify the hostname and set the external dns var to true:
```
ExternalDns: true
hostname: wiki.prominentedge.com
```

## Install:
* Now package
`helm package .`

* Now install
`helm install --name mediawiki -f values.yaml mediawiki-<version>.tgz`
  * Note that you can get the tgz from the above package command.

* Exec into your pod's filesystem and give the www-data user permission on the mounted data dir:
```
kubectl exec -it <pod-name> /bin/bash
chmod -R 755 /var/www/data
chown www-data:www-data /var/www/data 
```

## Custom Setup:
* Visit the url you specified for `hostname`.  Follow the setup instructions for your DB preference, and the following carefully:
  * Once you have created and downloaded your `LocalSettings.php` file, add it to the `/var/www/html/`
    directory in your pod's filesystem (Eg. you can do this using `kubectl exec -it <pod-name>`).
  * Refresh your browser, and your wiki should be ready to go.

