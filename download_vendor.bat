@echo off
setlocal
echo === Descargando Three.js a /vendor (para modo offline) ===
echo.

if not exist vendor mkdir vendor

powershell -NoProfile -ExecutionPolicy Bypass -Command ^
  "try { iwr -UseBasicParsing 'https://threejs.org/build/three.module.js' -OutFile 'vendor/three.module.js'; ^
         iwr -UseBasicParsing 'https://threejs.org/examples/jsm/controls/OrbitControls.js' -OutFile 'vendor/OrbitControls.js'; ^
         Write-Host 'OK: vendor listo.' } catch { Write-Host 'ERROR descargando. Revisa internet/firewall.'; exit 1 }"

echo.
echo Listo. Ahora recarga el visor (Ctrl+F5) en http://localhost:8000
pause
