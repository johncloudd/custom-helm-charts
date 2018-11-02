{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "elasticsearch.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "elasticsearch.fullname" -}}
{{- $name := default .Chart.Name -}}
{{- printf "%s-%s" .Chart.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified client name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "elasticsearch.client.fullname" -}}
{{- $name := default .Chart.Name -}}
{{- printf "%s-%s-%s" .Chart.Name $name .Values.client.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified data name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "elasticsearch.data.fullname" -}}
{{- $name := default .Chart.Name -}}
{{- printf "%s-%s-%s" .Chart.Name $name .Values.data.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified master name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "elasticsearch.master.fullname" -}}
{{- $name := default .Chart.Name -}}
{{- printf "%s-%s-%s" .Chart.Name $name .Values.master.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "log-stack.name" -}} 
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}} 
{{- end -}} 

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "log-stack.fullname" -}} 
{{- $name := default .Chart.Name .Values.nameOverride -}} 
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}} 
{{- end -}} 

/* fluentd _helper stuff: */
{{/*
Expand the name of the chart.
*/}}
{{- define "fluentd-elasticsearch.name" -}} 
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}} 
{{- end -}} 

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "fluentd-elasticsearch.fullname" -}} 
{{- $name := default .Chart.Name .Values.nameOverride -}} 
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}} 
{{- end -}} 

/* logstash _helper stuff: */
{{/*
Expand the name of the chart.
*/}}
{{- define "logstash.name" -}} 
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}} 
{{- end -}} 

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "logstash.fullname" -}} 
{{- $name := default .Chart.Name .Values.nameOverride -}} 
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}} 
{{- end -}} 

/* Kibana helper stuff */
{{/*
Expand the name of the chart.
*/}}
{{- define "kibana.name" -}} 
{{- default .Chart.Name .Values.kibana_nameOverride | trunc 63 | trimSuffix "-" -}} 
{{- end -}} 

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "kibana.fullname" -}} 
{{- $name := default .Chart.Name .Values.kibana_nameOverride -}} 
{{- if ne $name .Release.Name -}} 
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}} 
{{- else -}} 
{{- printf "%s" $name | trunc 63 | trimSuffix "-" -}} 
{{- end -}} 
{{- end -}} 

