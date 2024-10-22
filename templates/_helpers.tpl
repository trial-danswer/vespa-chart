{{/*
Expand the name of the chart.
*/}}
{{- define "vespa.name" -}}
{{- default .Chart.Name .Values.nameOverride -}}
{{- end -}}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "vespa.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name (include "vespa.name" .) -}}
{{- end -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "vespa.labels" -}}
app.kubernetes.io/name: {{ include "vespa.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{/*
Common selector labels
*/}}
{{- define "vespa.selectorLabels" -}}
{{- include "vespa.labels" . }}
app: {{ include "vespa.name" . }}
{{- end -}}

