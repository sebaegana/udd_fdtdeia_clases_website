# Actividad 3 (m1s4) — Auditoría con IA: Mistral CLI

Setup para la demo en vivo, antes de que lleguen los participantes.

## 1. Conseguir la API key (una sola vez)

Crea/inicia sesión en [console.mistral.ai](https://console.mistral.ai) y genera una API key.

## 2. Cada vez que abras una terminal nueva para la clase

En la ventana de PowerShell que vas a proyectar:

```powershell
$env:MISTRAL_API_KEY = "tu-key-real-aquí"
. "C:\Users\sebae\Downloads\UDD - FDTDE IA\udd_fdtdeia_clases_website\clases\scripts\auditar_mistral.ps1"
```

La key vive solo en esa ventana — no queda guardada en ningún archivo. Hay que repetir esto si cierras la terminal.

## 3. Probar antes de la clase

```powershell
auditar "Banco quiere otorgar créditos automáticos usando 10 años de historial de otorgamientos y morosidad"
```

Debe devolver red flags + veredicto, con tildes/ñ correctos. Si sale `Falta MISTRAL_API_KEY`, no ejecutaste el paso 2 en esta ventana.

## 4. En la Actividad 3

Solo escribe `auditar "<descripción del proyecto que eligió el grupo>"`.

## Alternativa para los participantes (sin instalar nada)

El mismo prompt funciona pegándolo directo en [chat.mistral.ai](https://chat.mistral.ai), sin API key. El texto exacto está en `auditar_mistral.ps1` (variable `$prompt`).
