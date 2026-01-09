Write-Host "=== Descargando Three.js a ./vendor (para modo offline) ==="
New-Item -ItemType Directory -Force -Path "vendor" | Out-Null
try {
  Invoke-WebRequest -Uri "https://threejs.org/build/three.module.js" -OutFile "vendor/three.module.js"
  Invoke-WebRequest -Uri "https://threejs.org/examples/jsm/controls/OrbitControls.js" -OutFile "vendor/OrbitControls.js"
  Write-Host "OK: vendor listo. Recarga el visor (Ctrl+F5)."
} catch {
  Write-Host "ERROR: No se pudo descargar. Revisa internet/firewall."
  throw
}
