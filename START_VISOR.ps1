Set-Location -LiteralPath $PSScriptRoot
Write-Host "Iniciando servidor en http://localhost:8000/index.html" -ForegroundColor Green
Start-Process "http://localhost:8000/index.html"
py -m http.server 8000
