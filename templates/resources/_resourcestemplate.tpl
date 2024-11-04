{{ define "helmlib.families.vfamily" }}
  resources:
    requests:
      cpu: {{ (.Values.vfamily).cpu }}m
      memory: {{ mul (.Values.vfamily).memory 1 }}Mi
    limits:
      cpu: {{ mul (.Values.vfamily).cpu 1 }}m
      memory: {{ mul (.Values.vfamily).memory 1 1 }}Mi
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
