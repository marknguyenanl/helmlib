{{ define "helmlib.families.vfamily" }}
resources:
  requests:
    cpu: {{ printf "%sm" ((.Values.families).vfamily).cpu }}
    memory: {{ printf "%sMi" (mul ((.Values.families).vfamily).memory 1) }}
  limits:
    cpu: {{ printf "%sm" (mul ((.Values.families).vfamily).cpu 1) }}
    memory: {{ printf "%sMi" (mul ((.Values.families).vfamily).memory 1 1) }}
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
