{{ define "helmlib.vmachine" }}
resources:
  requests:
    cpu: {{ .Values.vmachine.cpu }}m
    memory: {{ mul .Values.vmachine.memory .memcpuratio }}Mi
  limits:
    cpu: {{ mul .Values.vmachine.cpu .limitrequestratio }}m
    memory: {{ mul .Values.vmachine.memory .memcpuratio .limitrequestratio }}Mi
{{ end }}

{{ define "helmlib.xmachine" }}
resources:
  requests:
    cpu: {{ mul .Values.xmachine.cpu .}}m
    memory: {{ mul .Values.xmachine.memory .memcpuratio }}Mi
  limits:
    cpu: {{ mul .Values.xmachine.cpu .limitrequestratio }}m
    memory: {{ mul .Values.xmachine.memory .memcpuratio .limitrequestratio }}Mi
{{ end }}
