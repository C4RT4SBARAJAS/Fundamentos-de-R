# Fundamentos de R
En este curso vamos aprende a manejar los datos a traves de este **lenguaje de programación estadístico que se llama R**. Vamos a hacer análisis, vamos a hacer visualizaciones y todo a partir del manejo de **dos data sets**, uno que se llama **mtcars**, que está dentro de R, es un paquete muy sencillo, y otro data set que se llama **economía naranja**, el cual tiene información sobre económia naranja de los países de Latinoamerica, información económica muy rica para jugar con ella, porque vamos a manejar esta información para responder algunas preguntas que están en nuestro proyecto final. Entonces durante todo el curso vamos a responde preguntas tanto de data set de mtcars como de economía naranja.

Para este curso utilizaremos dos datasets:
- **mtcars**: un dataset incluido dentro de R con información sobre coches.
- **orangeec**: un dataset generado por la profesora de Plazi, en su curso original, sobre la economía naranja.

## Programación y Data Science
Antes de descargar R y RStudio, y escribir nuestras primeras lineas de código. Vamos a hablar de **Data Science** o **Ciencia de Datos**. ¿Por qué aprender Ciencia de Datos? La Ciencia de datos es muy útil tanto para las personas que están en el mundo social, personas en marketing o personas que están en periodismo, o ingenieros, programadores que están en esta parte de ciencias exactas y que también necesitan manejar la parte de análisis de datos. ¿Por qué? Resulta que en este momento ya los programadores les están trabajando muy de la mano con los Científicos de Datos, porque los programadores son los que diseñan las interfaces donde se capturan los datos, y son los datos la materia prima de los Científicos de Datos, y ademas, los datos si los sabemos manejar, y más adelante a un nivel más avanzado y hacer algo de Machine Learning, esas reglas harán que nuestro software se mejore automáticamente, y valla generando nuevas versiones. Así que es muy importante para un programdor tener conocimientos de Data Science.

Hoy estamos viviendo la Cuarta Revolución Industrial, es la revolución del **Big Data**, donde estamos llenos de datos, hablamos de cuidades inteligentes, de Internet de las Cosas. **¿Por qué estamos generando tantos datos para llegar a hablar de Big Data?** Pues todos nosotros estamos dejando hellas todos los días a través de nuestras interacciones en redeles sociales y eso hace que todas las empresas estén conociendo mucha más información de nosotros para poder satisfacer nuestras necesidades, así que las compañías buscan personas que puedan procesar esos datos y eso es parte del concepto de **Big Data, que tiene tres componenetes claves, Vomumen: la cantidad de datos, Velocidad y la Variedad de los datos**. El *Volumen* se refiere a que ya el Big Data tiene una cantidad de datos mucho más grande de la que podemos soportar en un excel, la *Velocidad* se refiere a que estamos generando interacciones en redes sociales todo el tiempo a una gran velocidad, y la *Variedad de los datos* se refiere a que ahora manejamos datos estructurados (en Filas y Columnas) y no estructurados (Fotos, Mensajes, etc.). 

También existe la **Small Data**. Los Científicos de Datos también deben ser capaces de podre análizar Small Data, en nuestras empresas, para nuestro desarrollo profesional. 

**¿Qué necesitamos para poder análizar tanto Big Data como Small Data? ¿Qué necesita un Científico de Datos para análizar los datos y extraer la información valiosa?**

Necesitamos un conocimiento en:
- **Matemáticas, Estadísticas**
- **Programación**
- **Conocimiento del negocio o del contexto donde se encuentran los datos**
- **Una habilidad para visualizar esos datos**
- **Y la capacidad para comunicar los allazgos, todo lo que encontremos**

Esto lo vamos a ver en nuestro proyecto final, es desarrollar esa habilidad de responder preguntas a través de los datos. 

## R y proyecto económia naranja

Empecemos hablando de R, R fue creado en 1993 en la Universidad de Auckland en Nueva Zelanda, es un leguaje especializado para maneja datos de manera estadística y poder extraer información valiosa, pero realmente se dice que fue creado en los años 70s en los Laboratorios Bell de AT&T y que fue una evolución del lenguaje S.

Pero también existen en la Ciencia de Datos el lenguaje Python, que seguramente hemos escuchado. Algunos Científicos de Datos hablan de Python como que es más fuerte para manejar datos no estructurados (nuevesde palabras), y que R es más fuerte para data estructurada, pero la verdad cada lenguaje tiene su fortaleza, acá lo clave no es preguntarnos cual es mejor o por cual lenguaje irnos, siemplemente extraer lo mejor de los dos lenguajes para sacarle muchísimo jugo al análisis de nuestros datos.

Los puntos que vamos a ver en este curso Fundamentos de R:
- Estructuras, tipos de datos y sintaxis
- EDA (Exploratory Data Analysis) o Análisis Exploratorio de Datos
- Estadística descriptiva
- Ajuste de datos: Subsetting, filtrado, selección
- Visualización de datos
- Organización de información R Markdown
- Proyecto final

**¿Qué es la economía naranja?**
Es donde se mezclan las industrias culturales con las áreas de soporte como el desarrollo de aplicaciones o software.

Buscaremos responder a la pregunta:
Si tienes un startup que hace software, ¿en qué país abrirías una oficina?

El **dataset de economía naranja** fue **creado con las siguientes variables:**

**PIP Per cápita**
- Aporte de servicios a PIB.
- Inflación.
- Edad mediana de la población.

**PIP País**
- Aporte de economía naranja a PIB.
- Tasa de desempleo.
- Porcentaje de la población entre 25-54 años.

**Crecimiento PIP**
- Penetración de internet.
- Población debajo de la línea de pobreza.
- Inversión en educación %PIB.

## Instalando nuestras herramientas
Para el curso **vamos a necesitar:**
- **[R](https://cran.r-project.org/ "R")**
- **[RStudio](https://www.rstudio.com/products/rstudio/download/ "RStudio")**
- **[Dataset de Orange Economy](https://github.com/C4RT4SBARAJAS/Fundamentos-de-R "Dataset de Orange Economy")**

**Click en los links para descargarlos.**

*R es el lenguaje, el motor de nuestro sistema.* 

*RStudio es la interfaz amigable que nos permite escribir el código en una forma mucho más facíl e indentíficar los errores mucho más rápido.* 

Orange Economy tiene las siguientes 13 variables:
1. **Country (País)**
2. **GDP PC (PIP Pércapita)**
3. **GDP US bill (PIP en billones de dalares de cada país)**
4. **GDP Growth % (Crecimiento del PIP en cada país)**
5. **Services % GDP (Aporte de los servicios al PIP)**
6. **Creat Ind % GDP (Aporte de las Industrias creativas o de la Economía naranja)**
7. **Inflation (Inflación)**
8. **Unemployment (Desempleo)**
9. **% pop below poverty line (% de la población por debajo de la línea de pobreza)**
10. **Internet penetration % population (Penetración de internet)**
11. **Median age ()**
12. **% pop 25-54 ()**
13. **Education invest % GDP ()**

# Importar un Dataset dentro de RStudio
Para importar un dataset dentro de RStudio nos dirigimos a **Environment** > **From Text (base)** > En la opción **Name** nombrar como **orangeec**, en la opción  **Heading** colocar **Yes**, verán como selecciona los **Row Headers correctos**. De lo contrario les aparecerá V1, V2, V3, V4,… como Row Headers y se les hará mas complicado utilizar el Dataset.

# Crear un Script en RStudio
Para crear un Script en RStudio nos dirigimos a **File** > **New File** > **R Script**. 

Para **Visualizar o generar un Output de nuestro Dataset** escribimos el siguente código en el R Script o en la Consola de R:

```r
View(orangeec)
```




