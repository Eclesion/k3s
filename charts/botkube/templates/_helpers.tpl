{{/*
Expand the name of the chart.
*/}}
{{- define "botkube.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create common labels.
*/}}
{{- define "botkube.labels" -}}
helm.sh/chart: {{ include "botkube.chart" . }}
{{ include "botkube.selectorLabels" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{/*
Selector labels
*/}}
{{- define "botkube.selectorLabels" -}}
app.kubernetes.io/name: {{ include "botkube.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{/*
Expand the name of the chart.
*/}}
{{- define "botkube.name" -}}
{{ .Chart.Name }}
{{- end -}}

{{/*
Expand the chart name.
*/}}
{{- define "botkube.chart" -}}
{{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}
