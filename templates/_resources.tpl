{{/* {{ define "helmlib.vfamily" }} */}}
{{/* resources: */}}
{{/*   requests: */}}
{{/*     cpu: {{ .Values.vfamily.cpu }}m */}}
{{/*     memory: {{ mul .Values.vfamily.memory .memcpuratio }}Mi */}}
{{/*   limits: */}}
{{/*     cpu: {{ mul .Values.vfamily.cpu .limitrequestratio }}m */}}
{{/*     memory: {{ mul .Values.vfamily.memory .memcpuratio .limitrequestratio }}Mi */}}
{{/* {{ end }} */}}
{{/**/}}
{{/* {{ define "helmlib.xfamily" }} */}}
{{/* resources: */}}
{{/*   requests: */}}
{{/*     cpu: {{ mul .Values.xfamily.cpu .}}m */}}
{{/*     memory: {{ mul .Values.xfamily.memory .memcpuratio }}Mi */}}
{{/*   limits: */}}
{{/*     cpu: {{ mul .Values.xfamily.cpu .limitrequestratio }}m */}}
{{/*     memory: {{ mul .Values.xfamily.memory .memcpuratio .limitrequestratio }}Mi */}}
{{/* {{ end }} */}}

{{ define "helmlib.family" }}
{{ range $family:= $.Values.families }}
{{ if eq $family.name .familyname }}
resources:
  requests:
    cpu: {{ $family.cpu }}m
    memory: {{ mul $family.memory .memcpuratio }}Mi
  limits:
    cpu: {{ mul $family.cpu .limitrequestratio }}m
    memory: {{ mul $family.memory .memcpuratio .limitrequestratio }}Mi
{{ end }}
{{ end }}
{{ end }}

{{ define "helmlib.machine" }}
{{ range $machine:= $.Values.machines }}
{{ if eq $machine.name .machinename }}
{{ $memcpuratio:= $machine.memcpuratio }}
{{ $limitrequestratio:= $machine.limitrequestratio }}
{{ include "helmlib.family" (dict "memcpuratio" $machine.memcpuratio "limitrequestratio" $machine.limitrequestratio) }}
{{ end }}
{{ end }}
{{ end }}
