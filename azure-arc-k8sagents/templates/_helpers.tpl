{{- define "resourcesync.commonproperties" }}
arcAgentVersion:
  description: ArcAgentVersion is the version of the arc agents in the cluster
  type: string
coreCount:
  description: CoreCount is the collective no of cores limit over all nodes present in the cluster
  type: integer
managedIdentityCertificateExpirationTime:
  format: date-time
  type: string
lastConnectivityTime:
  format: date-time
  type: string
oidcIssuerUrl:
  description: OIDCIssuerUrl is the issuer url of the cluster's OIDC provider
  type: string
{{- end }}

{{- define "platformserviceaccount.name" }}
{{- if .Values.global.isLeastPrivilegesMode }}
{{ .Values.global.platformServiceAccountName }}
{{- else }}
"azure-arc-operatorsa"
{{- end }}
{{- end }}

{{- define "kapserviceaccount.name" }}
{{- if .Values.global.isLeastPrivilegesMode }}
{{ .Values.global.platformServiceAccountName }}
{{- else }}
"azure-arc-kube-aad-proxy-sa"
{{- end }}
{{- end }}