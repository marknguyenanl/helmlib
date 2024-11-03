{{  define "v4machine" }}
{{ $baseunit:= .Values.overlay.baseunit }}
{{ $family:= .Values.overlay.familyres }}
{{ $vmachines:= .Values.overlay.vmachines }}
resources:
  - requests:
      cpu: {{ $baseunit }}m
      memory: {{ mul $baseunit $vmachines.v4 }}Mi
    limits:
      cpu: {{ mul $baseunit $vmachines.v4 }}m
      memory: {{ mul $baseunit $vmachines.v4 2 }}Mi
{{ end }}
