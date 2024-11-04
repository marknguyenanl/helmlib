{{ define "helmlib.families.vfamily" }}
resources:
  requests:
    cpu: {{ $.Values.families.vfamily.cpu }}m
    memory: {{ mul $.Values.families.vfamily.memory .memcpuratio }}Mi
  limits:
    cpu: {{ mul $.Values.families.vfamily.cpu .limitrequestratio }}m
    memory: {{ mul $.Values.families.vfamily.memory .memcpuratio .limitrequestratio }}Mi
{{ end }}

{{ define "helmlib.families.xfamily" }}
resources:
  requests:
    cpu: {{ $.Values.families.xfamily.cpu }}m
    memory: {{ mul $.Values.families.xfamily.memory .memcpuratio }}Mi
  limits:
    cpu: {{ mul $.Values.families.xfamily.cpu .limitrequestratio }}m
    memory: {{ mul $.Values.families.xfamily.memory .memcpuratio .limitrequestratio }}Mi
{{ end }}

