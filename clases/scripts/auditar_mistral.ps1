# Actividad 3 (m1s4) - Auditoria con IA via Mistral
#
# El mismo prompt sirve en dos lugares:
#   - Aqui (CLI), para la demo en vivo -> requiere $env:MISTRAL_API_KEY
#   - https://chat.mistral.ai           -> los participantes solo pegan el texto, sin API key
#
# Preparacion ANTES de la clase:
#   $env:MISTRAL_API_KEY = "tu-api-key-aqui"
#   . .\clases\scripts\auditar_mistral.ps1
#
# Uso en vivo:
#   auditar "Banco quiere otorgar creditos automaticos usando 10 anios de historial de otorgamientos y morosidad"

function auditar {
    param([Parameter(Mandatory = $true)][string]$Proyecto)

    if (-not $env:MISTRAL_API_KEY) {
        Write-Error "Falta MISTRAL_API_KEY. Ejecuta: `$env:MISTRAL_API_KEY = 'tu-key'"
        return
    }

    $prompt = @"
Actua como auditor de gobernanza de datos para lideres no tecnicos.
Te voy a describir un proyecto de IA. Responde en espanol, en maximo 6 lineas:

RED FLAGS DETECTADOS: (sesgo de representacion, sesgo historico, data leakage, calidad de datos - solo los que apliquen)
VEREDICTO: Aprobado / Aprobado con riesgo / Rechazado
JUSTIFICACION: (una sola linea)

Proyecto: $Proyecto
"@

    $bodyJson = @{
        model    = "mistral-small-latest"
        messages = @(@{ role = "user"; content = $prompt })
    } | ConvertTo-Json -Depth 5

    # PowerShell 5.1 no asume UTF-8 ni al enviar ni al leer la respuesta
    # (con tildes/ñ eso corrompe el envio o desordena la lectura). WebClient
    # con .Encoding forzado a UTF8 resuelve ambas direcciones.
    try {
        $client = New-Object System.Net.WebClient
        $client.Encoding = [System.Text.Encoding]::UTF8
        $client.Headers.Add("Authorization", "Bearer $env:MISTRAL_API_KEY")
        $client.Headers.Add("Content-Type", "application/json; charset=utf-8")

        $respText = $client.UploadString("https://api.mistral.ai/v1/chat/completions", "POST", $bodyJson)
        $response = $respText | ConvertFrom-Json

        $response.choices[0].message.content
    }
    catch {
        Write-Error "Error llamando a Mistral: $_"
    }
}
