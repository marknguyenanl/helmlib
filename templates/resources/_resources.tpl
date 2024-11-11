{{- define "helmlib.machineused" -}}
resources:
  requests:
    cpu: {{ .reqcpu }}
    memory: {{ .reqmem }}
  limits:
    cpu: {{ .limitcpu }}
    memory: {{ .limitmem }}
{{- end }}

{{- define "helmlib.machineused.logic" -}}
{{- end -}}

{{ define "this"}}
{{ $inputmachineused := .machineused }}
{{ $limitmem := printf ".Values.global.resources.memorycap.%s" $inputmachineused }}
{{ $limitcpu := mul $limitmem $inputmachineused }}
{{ $reqcpu := mul $limitcpu .reqtolimit }}
{{ $reqmem := mul $limitmem .reqtolimit}}
{{ include "helmlib.machineused" (dict "reqcpu" $reqcpu "reqmem" $reqmem "limitcpu" $limitcpu "limitmem" $limitmem) }}
{{ end }}


