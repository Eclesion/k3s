{{- define "jenkins.labels" -}}
app.kubernetes.io/name: {{ include "jenkins.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{- define "jenkins.name" -}}
{{ .Chart.Name }}
{{- end -}}
