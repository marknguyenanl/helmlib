{{ define "helmlib.families.vfamily" }}
{{- with .Values.vfamily }}
  resources:
    requests:
      cpu: {{ .cpu }}m
      memory: {{ mul .memory 1 }}Mi
    limits:
      cpu: {{ mul .cpu 1 }}m
      memory: {{ mul .memory 1 1 }}Mi
{{- end }}
{{ end }}

{{/* {{ define "helmlib.families.xfamily" }} */}}
{{/* resources: */}}
{{/*   requests: */}}
{{/*     cpu: {{ (((.Values.families).xfamily).cpu) }}m */}}
{{/*     memory: {{ mul (((.Values.families).xfamily).memory) .memcpuratio }}Mi */}}
{{/*   limits: */}}
{{/*     cpu: {{ mul (((.Values.families).xfamily).cpu) .limitrequestratio }}m */}}
{{/*     memory: {{ mul (((.Values.families).xfamily).memory) .memcpuratio .limitrequestratio }}Mi */}}
{{/* {{ end }} */}}
{{/**/}}
