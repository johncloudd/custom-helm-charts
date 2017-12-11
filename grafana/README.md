# grafana

 
## Package:
`helm package -d ./ .`

## Deploy:
`helm install --name grafana -f values.yaml grafana-0.6.1.tgz`

## Purge:
`helm delete --purge grafana`

## Altogether:
`make deploy`

## Setting GitHub Auth:
* To set GitHub auth, be sure to add Grafana as an oAuth application in your GitHub organization's settings.  You will
  need the client_id and client_secret.

```
    [auth.github]
    enabled = true
    allow_sign_up = false
    client_id = some_id
    client_secret = some_secret
    scopes = user:email,read:org
    auth_url = https://github.com/login/oauth/authorize
    token_url = https://github.com/login/oauth/access_token
    api_url = https://api.github.com/user
    ;team_ids =
    allowed_organizations = "Your Org"
```
* Also, be sure to set the root_url to the exact value as the domain / hostname you are using to login.

