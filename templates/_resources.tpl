{{ define "helmlib.vmachine" }}
resources:
  requests:
    cpu: 100m
    memory: {{ mul 128 .memcpuratio }}Mi
  limits:
    cpu: {{ mul 100 .limitrequestratio }}m
    memory: {{ mul 128 .memcpuratio .limitrequestratio }}Mi
{{ end }}
