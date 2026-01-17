# PROYECTO-APP
App de modelado 3D para planificación de CCTV.

## Ejecución rápida
1. Levanta un servidor local (recomendado para evitar problemas con módulos ES):
   ```bash
   python -m http.server 8000
   ```
2. Abre en el navegador:
   ```
   http://localhost:8000
   ```

## Modo offline (sin CDN)
Si tu red bloquea CDNs, descarga el vendor local:
```bash
./download_vendor.ps1
```
o en Windows:
```bat
download_vendor.bat
```
Luego recarga la página (Ctrl+F5).

## Notas
- Si el `vendor/` no existe, el visor intentará cargar Three.js desde CDN automáticamente.
- Las texturas opcionales viven en `./assets/textures/` (si no están disponibles, el visor funciona igual).
