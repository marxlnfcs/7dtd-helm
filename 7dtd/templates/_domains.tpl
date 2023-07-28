{{- define "domain.webAdmin" }}
{{- if and (.Values.server.ingress.webAdmin.enabled) (.Values.server.ingress.webAdmin.hostname) }}
{{- if .Values.server.ingress.webAdmin.path }}
{{- if .Values.server.ingress.webAdmin.tls }}
{{- printf "https://%s%s" (.Values.server.ingress.webAdmin.hostname) (.Values.server.ingress.webAdmin.path) }}
{{- else }}
{{- printf "http://%s%s" (.Values.server.ingress.webAdmin.hostname) (.Values.server.ingress.webAdmin.path) }}
{{- end }}
{{- else }}
{{- if .Values.server.ingress.webAdmin.tls }}
{{- printf "https://%s" (.Values.server.ingress.webAdmin.hostname) }}
{{- else }}
{{- printf "http://%s" (.Values.server.ingress.webAdmin.hostname) }}
{{- end }}
{{- end }}
{{- else }}
{{- printf "%s" ("") }}
{{- end }}
{{- end }}

{{- define "domain.serverFixes" }}
{{- if and (.Values.server.ingress.serverFixes.enabled) (.Values.server.ingress.serverFixes.hostname) }}
{{- if .Values.server.ingress.serverFixes.path }}
{{- if .Values.server.ingress.serverFixes.tls }}
{{- printf "https://%s%s" (.Values.server.ingress.serverFixes.hostname) (.Values.server.ingress.serverFixes.path) }}
{{- else }}
{{- printf "http://%s%s" (.Values.server.ingress.serverFixes.hostname) (.Values.server.ingress.serverFixes.path) }}
{{- end }}
{{- else }}
{{- if .Values.server.ingress.serverFixes.tls }}
{{- printf "https://%s" (.Values.server.ingress.serverFixes.hostname) }}
{{- else }}
{{- printf "http://%s" (.Values.server.ingress.serverFixes.hostname) }}
{{- end }}
{{- end }}
{{- else }}
{{- printf "%s" ("") }}
{{- end }}
{{- end }}