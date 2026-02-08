#!/bin/bash

# ============================================================================
# Setup automático para el proyecto Monte Carlo - Dados
# ============================================================================

echo "🎲 Configurando el proyecto Monte Carlo..."
echo ""

# Colores para output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# 1. Verificar Python
echo -e "${YELLOW}[1/5]${NC} Verificando instalación de Python..."
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 no está instalado. Por favor, instala Python 3.8 o superior."
    exit 1
fi

PYTHON_VERSION=$(python3 --version | cut -d' ' -f2)
echo -e "${GREEN}✓${NC} Python ${PYTHON_VERSION} detectado"
echo ""

# 2. Crear entorno virtual
echo -e "${YELLOW}[2/5]${NC} Creando entorno virtual..."
if [ -d "venv" ]; then
    echo "El entorno virtual ya existe. Eliminando..."
    rm -rf venv
fi

python3 -m venv venv
echo -e "${GREEN}✓${NC} Entorno virtual creado"
echo ""

# 3. Activar entorno virtual
echo -e "${YELLOW}[3/5]${NC} Activando entorno virtual..."
source venv/bin/activate
echo -e "${GREEN}✓${NC} Entorno virtual activado"
echo ""

# 4. Actualizar pip
echo -e "${YELLOW}[4/5]${NC} Actualizando pip..."
pip install --upgrade pip --quiet
echo -e "${GREEN}✓${NC} pip actualizado"
echo ""

# 5. Instalar dependencias
echo -e "${YELLOW}[5/5]${NC} Instalando dependencias del proyecto..."
pip install -r requirements.txt --quiet
echo -e "${GREEN}✓${NC} Dependencias instaladas"
echo ""

# Crear estructura de directorios si no existe
mkdir -p notebooks
mkdir -p docs
mkdir -p figuras
mkdir -p src

# Mensaje final
echo "════════════════════════════════════════════════════════════"
echo -e "${GREEN}✅ ¡Instalación completada!${NC}"
echo "════════════════════════════════════════════════════════════"
echo ""
echo "Para empezar a trabajar:"
echo ""
echo "  1. Activa el entorno virtual:"
echo "     source venv/bin/activate"
echo ""
echo "  2. Lanza Jupyter Notebook:"
echo "     jupyter notebook"
echo ""
echo "  3. Abre el notebook principal:"
echo "     notebooks/entregable_principal.ipynb"
echo ""
echo "Para desactivar el entorno virtual cuando termines:"
echo "  deactivate"
echo ""
echo "════════════════════════════════════════════════════════════"
