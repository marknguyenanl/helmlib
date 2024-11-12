{{- define "helmlib.machineused" -}}
{{- range $machines := .Values.global.machine }}
---
{{- if $machines .Values.overlay.usedmachine }}
resources: 
  requests:
    cpu: {{ .Values.global.machines.ac1l1.requests.cpu }}
    memory: {{ .Values.global.machines.ac1l1.requests.memory }}
  limits:
    cpu: {{ .Values.global.machines.ac1l1.limits.cpu }}
    memory: {{ .Values.global.machines.ac1l1.limits.memory }}
{{- end -}}
---
{{- end -}}
{{- end -}}
