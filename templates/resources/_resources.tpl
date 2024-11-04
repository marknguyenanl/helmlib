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

{{ range $machine:= $.Values.machines }}
{{ $libmachine:= cat "helmlib." $machine }}
{{ $memcpuratio:= $machine.memcpuratio }}
{{ $limitrequestratio:= $machine.limitrequestratio }}
{{ $libdict:= dict "memcpuratio" $machine.memcpuratio "limitrequestratio" $machine.limitrequestratio }}
{{ printf "define %s" $libmachine }}
{{ include $libmachine $libdict | indent 2}}
{{ printf "end" }}
{{ end }}
