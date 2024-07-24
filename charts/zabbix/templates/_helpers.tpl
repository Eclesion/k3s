{{/*
Generate the full name of the chart based on the release name and namespace.
*/}}
{{- define "zabbix.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
