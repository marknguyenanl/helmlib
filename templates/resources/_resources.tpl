{{ define "helmlib.vfamily" }}
resources:
  requests:
    cpu: {{ .Values.vfamily.cpu }}m
    memory: {{ mul .Values.vfamily.memory .memcpuratio }}Mi
  limits:
    cpu: {{ mul .Values.vfamily.cpu .limitrequestratio }}m
    memory: {{ mul .Values.vfamily.memory .memcpuratio .limitrequestratio }}Mi
{{ end }}

{{ define "helmlib.xfamily" }}
resources:
  requests:
    cpu: {{ mul .Values.xfamily.cpu .}}m
    memory: {{ mul .Values.xfamily.memory .memcpuratio }}Mi
  limits:
    cpu: {{ mul .Values.xfamily.cpu .limitrequestratio }}m
    memory: {{ mul .Values.xfamily.memory .memcpuratio .limitrequestratio }}Mi
{{ end }}

