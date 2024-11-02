{{  define "helmlib.Cfamily" }}
resources:
  - requests:
      cpu: {{ $.Values.overlay.baseunit.cpu }}m
      memory: {{ $.Values.overlay.baseunit.mem }}Mi
    limits:
      cpu: {{ mul $.Values.overlay.baseunit.cpu 4 }}m
      memory: {{ mul $.Values.overlay.baseunit.mem 4 }}Mi
{{ end }}
