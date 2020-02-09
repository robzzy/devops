{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "mysql.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Define mysql storage name.
*/}}
{{- define "mysql.storageClassName" -}}
{{- printf "%s-%s" .Chart.Name "storage" | trunc 63 | trimSuffix "-" -}}
{{- end -}}