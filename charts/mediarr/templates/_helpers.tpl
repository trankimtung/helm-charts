{{/*
ServiceAccount name.
*/}}
{{- define "mediarr.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "common.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Validate: RWO persistence is incompatible with >1 replica or RollingUpdate.
*/}}
{{- define "mediarr.validate" -}}
{{- range $compName, $comp := .Values.components }}
{{- if ne $comp.enabled false }}
{{- range $depName, $dep := $comp.deployments }}
{{- range $pvcName, $pvc := $comp.persistence }}
{{- if and (gt ($dep.replicas | int) 1) $pvc.enabled (eq $pvc.accessMode "ReadWriteOnce") -}}
{{- fail (printf "components.%s.deployments.%s: replicas > 1 unsupported with persistence.%s RWO" $compName $depName $pvcName) -}}
{{- end -}}
{{- if and (eq $dep.strategy.type "RollingUpdate") $pvc.enabled (eq $pvc.accessMode "ReadWriteOnce") -}}
{{- fail (printf "components.%s.deployments.%s: RollingUpdate unsupported with persistence.%s RWO" $compName $depName $pvcName) -}}
{{- end -}}
{{- end -}}
{{- end -}}
{{- end -}}
{{- end -}}
{{- end }}
