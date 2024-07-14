{{- define "portainer.labels" -}}
app.kubernetes.io/name: {{ include "portainer.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{- define "portainer.name" -}}
{{ .Chart.Name }}
{{- end -}}

{{- define "portainer.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "portainer.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

