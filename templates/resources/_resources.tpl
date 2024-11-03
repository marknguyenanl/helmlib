{{ define "helmlib.vmachine" }}
resources:
  requests:
    cpu: {{ .Values.base.cpu }}m
    memory: {{ mul .Values.base.memory .memcpuratio }}Mi
  limits:
    cpu: {{ mul .Values.base.cpu .limitrequestratio }}m
    memory: {{ mul .Values.base.memory .memcpuratio .limitrequestratio }}Mi
{{ end }}
