{{- define "helmlib.machineused" -}}
{{ $requests := ((((.Values.global).machines).ac1l1).requests) }}
{{ $limits := ((((.Values.global).machines).ac1l1).limits) }}

{{- range $machines := (.Values.global).machines }}
---
{{- if $machines (.Values.overlay).usedmachine }}
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
