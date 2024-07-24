{{/*
Generate the full name of the chart based on the release name and chart name.
*/}}
{{- define "zabbix.fullname" -}}
{{- printf "%s-%s" .Release.Name "zabbix" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Generate the name of the chart.
*/}}
{{- define "zabbix.name" -}}
{{- "zabbix" -}}
{{- end -}}
