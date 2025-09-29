# Modelo_Vulnerabilidad
Analisis de la vulnerabilidad de las personas retornadas
# Estructura del repositorio

## 1. Limpieza y transformacion de datos.ipynb
Lee el archivo inicial de encuestas (no incluido por confidencialidad).
Renombra columnas, elimina valores nulos, transforma variables categóricas a numéricas, normaliza valores y genera un primer dataset limpio.

## 2. Revisión manual (Excel)
Ajustes manuales al dataset (nivel de inglés, escolaridad y otros campos).
Este paso asegura la calidad de los datos antes de la unión con otras fuentes.

## 3. Union de datos.ipynb
Combina el dataset de encuestas con índices de desarrollo humano municipal (IDHM) y el Índice de Pobreza Multidimensional (IPM).
Estandariza valores categóricos (departamento y municipio).
Realiza un left join con datos de la OIT (ILO Stats) sobre desempleo.
Genera un dataset combinado con todas las fuentes.

## 4. Calculo de variable dependiente.ipynb
Define criterios de ponderación para calcular la variable dependiente “Vulnerabilidad”.
Asigna el nivel de vulnerabilidad a cada registro y genera el dataset final Vulnerabilidades.

## 5. Analisis_descriptivo.R
Utiliza R para realizar un análisis exploratorio-descriptivo del dataset Vulnerabilidades.
Incluye medidas de tendencia central, dispersión y visualizaciones.

## 6. Modelo_predictivo.ipynb
Entrena modelos de clasificación (Random Forest y XGBoost).
Evalúa métricas de desempeño (precisión, recall, F1-score, matriz de confusión).
Aplica técnicas de balanceo de clases (SMOTE).

## Requisitos
Python 3.10+
R 4.3+


# Instrucciones de ejecución

1.- Clonar el repositorio:
git clone <URL_DEL_REPOSITORIO>
cd <NOMBRE_DEL_PROYECTO>

2.- Ejecutar los notebooks en el siguiente orden:
Limpieza_y_transformacion_de_datos.ipynb
Revisión manual en Excel
Union_de_datos.ipynb
Calculo_de_variable_dependiente.ipynb

3.- Realizar el análisis exploratorio en R:
Abrir y correr Analisis_descriptivo.R

4.- Entrenar y evaluar los modelos predictivos:
Ejecutar Modelo_predictivo.ipynb

Por motivos de confidencialidad, los datos originales de las encuestas no se incluyen en el repositorio.
