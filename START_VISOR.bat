@echo off
setlocal
cd /d %~dp0
echo Iniciando servidor en http://localhost:8000/index.html
echo (Cierra esta ventana para detener el servidor)
start "" http://localhost:8000/index.html
py -m http.server 8000
