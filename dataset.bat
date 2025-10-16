@echo off
REM ======================================
REM Script para crear estructura de carpetas del dataset
REM No sobrescribe si ya existen
REM ======================================

setlocal

REM Crear carpeta raíz
if not exist dataset (
    mkdir dataset
    echo [OK] Carpeta 'dataset' creada.
) else (
    echo [INFO] Carpeta 'dataset' ya existe.
)

REM Crear subcarpetas de imágenes
for %%F in ("dataset\images" "dataset\images\train" "dataset\images\val") do (
    if not exist "%%F" (
        mkdir "%%F"
        echo [OK] Carpeta %%F creada.
    ) else (
        echo [INFO] Carpeta %%F ya existe.
    )
)

REM Crear subcarpetas de etiquetas
for %%F in ("dataset\labels" "dataset\labels\train" "dataset\labels\val") do (
    if not exist "%%F" (
        mkdir "%%F"
        echo [OK] Carpeta %%F creada.
    ) else (
        echo [INFO] Carpeta %%F ya existe.
    )
)

echo.
echo ✅ Estructura de carpetas verificada o creada correctamente.
echo dataset
echo ├── images
echo │   ├── train
echo │   └── val
echo └── labels
echo     ├── train
echo     └── val
pause
