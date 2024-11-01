{{ define "helmlib.resourceC" }} 
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

{{  define "helmlib.resourceM" }}
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

{{  define "helmlib.resourceG" }}
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

{{  define "helmlib.resourceB" }}
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

