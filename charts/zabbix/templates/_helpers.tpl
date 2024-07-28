{{/*
Generate the name of the release
*/}}
{{- define "zabbix.fullname" -}}
{{- printf "%s-%s" .Release.Name "zabbix" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Generate the name of the chart
*/}}
{{- define "zabbix.name" -}}
{{- .Chart.Name -}}
{{- end -}}

{{/*
Generate the chart name and version
*/}}
{{- define "zabbix.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | trunc 63 | trimSuffix "-" -}}
{{- end -}}
