{{- define "boolToEnv" }}
{{- if . }}
{{- printf "%s" ("YES") }}
{{- else }}
{{- printf "%s" ("NO") }}
{{- end }}
{{- end }}

{{- define "boolToString" }}
{{- if . }}
{{- printf "%s" ("true") }}
{{- else }}
{{- printf "%s" ("false") }}
{{- end }}
{{- end }}