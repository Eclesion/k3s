{{/*
Generate the full name of the chart based on the release name and chart name.
*/}}
{{- define "zabbix.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Generate the name of the chart.
*/}}
{{- define "zabbix.name" -}}
{{- .Chart.Name -}}
{{- end -}}
