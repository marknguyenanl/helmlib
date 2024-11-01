{{ define "helm-lib.resource--family-C" }} 
{{ $cpu:= $.Values.baseunit }}
{{ $cfamily:= index $.Values.overlay.familyres 0 }}
resources:
  - requests:
      cpu: {{ $cpu }}m
      memory: {{ mul $cpu $cfamily.memcpuratio }}Mi
    limits:
      cpu: {{ mul $cpu $cfamily.limitreqratio }}m
      memory: {{ mul $cpu $cfamily.limitreqratio $cfamily.memcpuratio }}Mi
{{  end }}

{{  define "helm-lib.resource--family-M" }}
{{ $cpu:= $.Values.baseunit }}
{{ $mfamily:= index $.Values.overlay.familyres 1 }}
resources:
  - requests:
      cpu: {{ $cpu }}m
      memory: {{ mul $cpu $mfamily.memcpuratio }}Mi
    limits:
      cpu: {{ mul $cpu $mfamily.limitreqratio }}m
      memory: {{ mul $cpu $mfamily.limitreqratio $mfamily.memcpuratio }}Mi
{{ end }}

{{  define "helm-lib.resource--family-G" }}
{{ $cpu:= $.Values.baseunit }}
{{ $mfamily:= index $.Values.overlay.familyres 2 }}
resources:
  - requests:
      cpu: {{ $cpu }}m
      memory: {{ mul $cpu $mfamily.memcpuratio }}Mi
    limits:
      cpu: {{ mul $cpu $mfamily.limitreqratio }}m
      memory: {{ mul $cpu $mfamily.limitreqratio $mfamily.memcpuratio }}Mi
{{ end }}

{{  define "helm-lib.resource--family-B" }}
{{ $cpu:= $.Values.baseunit }}
{{ $mfamily:= index $.Values.overlay.familyres 3 }}
resources:
  - requests:
      cpu: {{ $cpu }}m
      memory: {{ mul $cpu $mfamily.memcpuratio }}Mi
    limits:
      cpu: {{ mul $cpu $mfamily.limitreqratio }}m
      memory: {{ mul $cpu $mfamily.limitreqratio $mfamily.memcpuratio }}Mi
{{ end }}

