{{- define "helmlib.machineused" -}}
{{ $usedmachine := ($.Values.overlay).usedmachine }}
{{ $requests := (((($.Values.global).machines).ac1l1).requests) }}
{{ $limits := (((($.Values.global).machines).ac1l1).limits) }}

{{- range $machine := ($.Values.global).machines }}
---
{{- if $machine }}
resources: 
  requests:
    cpu: {{ $requests.cpu }}
    memory: {{ $requests.memory }}
  limits:
    cpu: {{ $limits.cpu }}
    memory: {{ $limits.memory }}
{{- end -}}
---
{{- end -}}
{{- end -}}
