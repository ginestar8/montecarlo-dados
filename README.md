# 🎲 Monte Carlo en Sistemas Estocásticos

<div align="center">

![Python](https://img.shields.io/badge/Python-3.8+-blue.svg)
![License](https://img.shields.io/badge/License-MIT-green.svg)
![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-orange.svg)
![Status](https://img.shields.io/badge/Status-Completado-success.svg)

**Simulación de Monte Carlo aplicada a dados: Desde probabilidades básicas hasta modelos físicos avanzados**

[Ver Notebook](#-notebook-principal) • [Instalación](#-instalación-rápida) • [Características](#-características-principales) • [Documentación](#-documentación)

</div>

---

## 📋 Descripción

Proyecto completo de **Física Estadística** que explora el método de Monte Carlo a través de simulaciones con dados, yendo desde ejercicios básicos de probabilidad hasta aplicaciones avanzadas como el algoritmo de Metropolis y conexiones con el modelo de Ising.

### 🎯 Objetivo Académico

- **Asignatura:** Física Estadística (3º Física)
- **Universidad:** [Tu Universidad]
- **Fecha:** Febrero 2026
- **Calificación:** [Pendiente/10]

### 🔬 Enfoque del Proyecto

Este trabajo demuestra cómo el **método de Monte Carlo**, fundamental en física computacional moderna, puede aplicarse desde problemas simples (tiradas de dados) hasta sistemas complejos (transiciones de fase, difusión, sistemas de muchas partículas).

---

## 🚀 Características Principales

### ✅ Resolución del Ejercicio Base

Tres dados lanzados simultáneamente. Cálculo de:
- **a)** P(suma ≤ 6) = 0.046296 ± 0.0002
- **b)** P(suma ≤ 16) = 0.962037 ± 0.0002  
- **c)** P(7 ≤ suma ≤ 16) = 0.930556 ± 0.0002

Comparación rigurosa entre **método analítico** (216 casos enumerados) y **simulación Monte Carlo** (10⁶ iteraciones).

### 🎨 Visualizaciones Avanzadas

- **Animaciones de convergencia:** Observa cómo el histograma converge a la distribución teórica
- **Dados visualizados:** Representación gráfica de tiradas individuales
- **Análisis de error:** Validación experimental de la ley σ ∝ 1/√N

### 🎲 Extensiones Creativas

1. **Dados Cargados**  
   Simulación de dados trucados. Aplicación: detección estadística de trampas en casinos.

2. **Juego del Craps**  
   Implementación completa del juego de casino. Cálculo de ventaja de la casa (~1.4%).

3. **Dados Correlacionados**  
   Modelo donde el resultado de un dado influye en otro (análogo a interacciones ferromagnéticas).

### 🔬 Conceptos Avanzados de Física Estadística

- **Algoritmo de Metropolis:** Muestreo según el factor de Boltzmann
- **Efecto de la temperatura:** Exploración vs explotación en el espacio de fases
- **Monte Carlo Cinético:** Evolución temporal basada en frecuencias de transición

### 🧲 Conexión con Física

- **Random Walk 2D:** Modelo de difusión molecular
- **Mapeo dados ↔ espines:** Relación con el modelo de Ising
- **Sistemas paramagnéticos vs ferromagnéticos:** Transiciones de fase

---

## 🛠️ Instalación Rápida

### Requisitos Previos

- Python 3.8 o superior
- pip (gestor de paquetes)

### Pasos de Instalación

```bash
# 1. Clonar el repositorio
git clone https://github.com/[tu-usuario]/montecarlo-dados.git
cd montecarlo-dados

# 2. Instalar dependencias
pip install -r requirements.txt

# 3. Lanzar Jupyter Notebook
jupyter notebook

# 4. Abrir el notebook principal
# notebooks/entregable_principal.ipynb
```

### Instalación con Entorno Virtual (Recomendado)

```bash
# Crear entorno virtual
python -m venv venv

# Activar entorno (Linux/Mac)
source venv/bin/activate

# Activar entorno (Windows)
venv\Scripts\activate

# Instalar dependencias
pip install -r requirements.txt
```

---

## 📁 Estructura del Proyecto

```
montecarlo-dados/
├── 📓 notebooks/
│   ├── entregable_principal.ipynb      # Notebook completo del proyecto
│   └── semana1_monte_carlo.ipynb       # Ejercicios introductorios
│
├── 📄 docs/
│   ├── informe.pdf                     # Informe académico (3-5 páginas)
│   ├── guia_estrategica.md             # Plan de trabajo y consejos
│   └── referencias.bib                 # Referencias bibliográficas
│
├── 📊 figuras/
│   ├── comparacion_analitico_mc.png
│   ├── convergencia_error.png
│   ├── metropolis_temperatura.png
│   ├── random_walk_2d.png
│   └── ...
│
├── 🐍 src/
│   ├── __init__.py
│   ├── montecarlo.py                   # Funciones principales de MC
│   ├── visualizaciones.py              # Funciones de graficación
│   └── utils.py                        # Utilidades generales
│
├── 📋 requirements.txt                  # Dependencias del proyecto
├── 📖 README.md                         # Este archivo
├── 📜 LICENSE                           # Licencia MIT
└── ⚙️ .gitignore                        # Archivos a ignorar por Git
```

---

## 📓 Notebook Principal

El notebook está organizado en **5 secciones progresivas**:

### 1️⃣ Ejercicio Base
- Solución analítica (enumeración completa)
- Solución Monte Carlo (10⁶ simulaciones)
- Comparación y validación
- Análisis de convergencia

### 2️⃣ Visualizaciones Avanzadas
- Representación gráfica de dados
- Animaciones de convergencia
- Histogramas dinámicos

### 3️⃣ Extensiones Creativas
- Dados cargados (distribuciones no uniformes)
- Juego del Craps (aplicación real)
- Dados correlacionados (sistemas con memoria)

### 4️⃣ Conceptos Avanzados
- Algoritmo de Metropolis
- Muestreo de importancia
- Monte Carlo cinético

### 5️⃣ Conexión con Física
- Random walk y difusión
- Modelo de Ising
- Sistemas de espines

---

## 📊 Resultados Destacados

### Convergencia del Error

<div align="center">

| N (tiradas) | Error típico | Tiempo de cómputo |
|-------------|--------------|-------------------|
| 1,000 | ~1% | < 0.01s |
| 10,000 | ~0.3% | ~0.1s |
| 100,000 | ~0.1% | ~1s |
| 1,000,000 | ~0.03% | ~10s |

*Validación experimental de σ ∝ 1/√N*

</div>

### Comparación de Métodos

| Método | Ventajas | Desventajas |
|--------|----------|-------------|
| **Analítico** | Exacto, rápido para casos simples | Inviable para sistemas grandes (>10 dados) |
| **Monte Carlo** | Escalable, aplicable a cualquier complejidad | Resultados aproximados, requiere muchas iteraciones |

---

## 🔬 Metodología Científica

### Rigor Implementado

- ✅ **Reproducibilidad:** Semilla aleatoria fijada (`np.random.seed(42)`)
- ✅ **Validación:** Comparación con solución analítica
- ✅ **Errores estimados:** Intervalos de confianza en todos los resultados
- ✅ **Documentación:** Docstrings en todas las funciones
- ✅ **Modularidad:** Código reutilizable y extensible

### Validación Estadística

Todos los resultados numéricos incluyen:
- **Valor estimado** (media de la simulación)
- **Error estándar** (σ/√N)
- **Intervalo de confianza** (95%)

Ejemplo:
```
P(suma ≤ 6) = 0.046296 ± 0.000207 (95% CI: [0.046089, 0.046503])
```

---

## 📚 Fundamentos Teóricos

### Método de Monte Carlo

El método de Monte Carlo usa muestreo aleatorio para obtener resultados numéricos. Basado en:

1. **Ley de los Grandes Números:**  
   $\lim_{N \to \infty} \frac{1}{N}\sum_{i=1}^N X_i = \mathbb{E}[X]$

2. **Teorema del Límite Central:**  
   El error estándar escala como $\sigma \propto \frac{1}{\sqrt{N}}$

### Algoritmo de Metropolis

Genera muestras según una distribución de probabilidad objetivo:

$$P(\text{aceptar transición}) = \min\left(1, e^{-\Delta E / k_B T}\right)$$

Donde:
- $\Delta E$ = cambio de energía
- $k_B$ = constante de Boltzmann
- $T$ = temperatura del sistema

---

## 🎓 Aplicaciones en Física

### Modelo de Ising

Conexión directa con el seminario del profesor (PDF incluido en `/docs/referencias/`):

- Dados independientes ≈ Sistema paramagnético (T > Tc)
- Dados correlacionados ≈ Sistema ferromagnético (T < Tc)
- Algoritmo de Metropolis = Mismo que en simulaciones de espines

### Otros Sistemas Físicos

- **Difusión molecular:** Random walk 2D/3D
- **Gases ideales:** Distribución de Maxwell-Boltzmann
- **Transiciones de fase:** Temperatura crítica
- **Sistemas de muchas partículas:** Ensemble estadístico

---

## 🛠️ Tecnologías Utilizadas

- **Python 3.10:** Lenguaje principal
- **NumPy:** Cálculo numérico y vectorización
- **Matplotlib:** Visualizaciones estáticas
- **Seaborn:** Gráficas estadísticas avanzadas
- **SciPy:** Funciones estadísticas
- **Jupyter:** Entorno interactivo de desarrollo

---

## 📖 Documentación Adicional

- **[Guía Estratégica](docs/guia_estrategica.md):** Plan de trabajo para maximizar la nota
- **[Informe Completo](docs/informe.pdf):** Documento académico (PDF)
- **[Referencias](docs/referencias.bib):** Bibliografía en formato BibTeX

### Recursos Externos

- [Metropolis et al. (1953)](https://doi.org/10.1063/1.1699114) - Paper original
- [Landau & Binder: Monte Carlo Simulations](https://doi.org/10.1017/CBO9781139696463)
- [PDF del curso](docs/referencias/modelo_ising_montecarlo.pdf) - Seminario del profesor

---

## 🤝 Contribuciones

Este proyecto es parte de un entregable académico individual. Sin embargo, sugerencias y mejoras son bienvenidas:

1. Fork el proyecto
2. Crea una rama (`git checkout -b feature/mejora`)
3. Commit tus cambios (`git commit -m 'Añade nueva característica'`)
4. Push a la rama (`git push origin feature/mejora`)
5. Abre un Pull Request

---

## 📜 Licencia

Este proyecto está bajo la licencia MIT. Ver archivo [LICENSE](LICENSE) para más detalles.

---

## ✉️ Contacto

**Autor:** [Tu Nombre]  
**Email:** [tu.email@universidad.edu]  
**Universidad:** [Tu Universidad]  
**LinkedIn:** [Tu perfil de LinkedIn]  
**GitHub:** [@tu-usuario](https://github.com/tu-usuario)

---

## 🙏 Agradecimientos

- **Prof. Javier Cervera y Prof. Salvador Mafé** - Material docente sobre Monte Carlo y modelo de Ising
- **Comunidad de Python científico** - Herramientas de código abierto
- **Anthropic Claude** - Asistencia en documentación y optimización de código

---

## 📈 Estadísticas del Proyecto

![GitHub repo size](https://img.shields.io/github/repo-size/tu-usuario/montecarlo-dados)
![GitHub last commit](https://img.shields.io/github/last-commit/tu-usuario/montecarlo-dados)
![GitHub stars](https://img.shields.io/github/stars/tu-usuario/montecarlo-dados?style=social)

---

<div align="center">

**⭐ Si este proyecto te fue útil, considera darle una estrella en GitHub ⭐**

Hecho con ❤️ y Python | Febrero 2026

</div>
