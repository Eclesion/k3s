{{/*
Expand the name of the chart.
*/}}
{{- define "postgresql.name" -}}
{{ .Chart.Name }}
{{- end -}}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "postgresql.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "postgresql.name" .) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "postgresql.labels" -}}
helm.sh/chart: {{ include "postgresql.chart" . }}
{{ include "postgresql.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service | quote }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "postgresql.selectorLabels" -}}
app.kubernetes.io/name: {{ include "postgresql.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{/*
Expand the chart name and version as used by the chart labels.
*/}}
{{- define "postgresql.chart" -}}
{{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}

{{/*
Expand the name of the service account.
*/}}
{{- define "postgresql.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "postgresql.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end -}}
