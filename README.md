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

Orange Economy tiene las siguientes **13 variables**:
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
11. **Median age (Mediana en la edad)**
12. **% pop 25-54 (% de la población de 25-24 años)**
13. **Education invest % GDP (Invesión en educación)**

## Importar un Dataset dentro de RStudio
Para importar un dataset dentro de RStudio nos dirigimos a **Environment** > **From Text (base)** > En la opción **Name** nombrar como **orangeec** > En la opción  **Heading** colocar **Yes**, verán como selecciona los **Row Headers correctos**. De lo contrario les aparecerá V1, V2, V3, V4,… como Row Headers y se les hará mas complicado utilizar el Dataset > Dejar los demás valores por defecto > **Click en Import**.

Ahora nuestro Dataset esta agregado en el **Ambiente de trabajo** de RStudio bajo el nombre de **arongeec** y está listo para usarse.

## Crear un Script en RStudio
Para crear un Script en RStudio nos dirigimos a **File** > **New File** > **R Script**. 

Para **Visualizar o generar un Output de nuestro Dataset** escribimos el siguente código en el R Script o en la Consola de R:

```r
View(orangeec)
```

## Variables en R
**Las variables son conceptos básicos en programación** y **nos ahorran mucho tiempo**, por ejemplo, si tenemos varios datos: A, B, C, D, E, etc; y los necesitamos llamar recurrentemente para hacer unos calculos, los podemos meter en una variable que se llame **X** y simplemente cuando necesitemos la varible llamamos **X**, si necesidad de estar llamando A, B, C, D, E, etc. Entonces para eso son útiles las variables. Veamos unos ejemplos:

```r
Nombre_de_la_Variable <- función o contenido

X <- 86
```

Para visualizar el contenido de la variable ejecutamos el nombre de la variable:

```r
X
```

## Preguntar a la Documentación de R
Al visualizar por primera vez nuestro **Dataset mtcars**, talvés tengamos la pregunta de qué significan sus variables abreviadas. Para responder a esta pregunta **podemos preguntar a la Documentación de R** de la siguiente manera:

```r
?mtcars
```

Donde nos muestra la siguiente respecto al Dataset mtcars:

**Format**

**A data frame** with **32 observations** on **11 (numeric) variables**.

- [, 1]	**mpg**	Miles/(US) gallon
- [, 2]	**cyl**	Number of cylinders
- [, 3]	**disp**	Displacement (cu.in.)
- [, 4]	**hp**	Gross horsepower
- [, 5]	**drat**	Rear axle ratio
- [, 6]	**wt**	Weight (1000 lbs)
- [, 7]	**qsec**	1/4 mile time
- [, 8]	**vs**	Engine (0 = V-shaped, 1 = straight)
- [, 9]	**am**	Transmission (0 = automatic, 1 = manual)
- [,10]	**gear**	Number of forward gears
- [,11]	**carb**	Number of carburetors

## Tipos de Datos en R

- **num** o **dbl** (numeric o double)
- **str** (string)
- **logi** (logical)
- **int** (integer)
- **dec** (decimal)
- **fct** (factor)

## Vectores en R
Los vectores son entes matemáticos que se usan para **guardar data de cierto tipo**, data númerica, de carácteres, o data logica, pero solamente de un tipo, y para eso **utilizamos contenedores C**. Por ejemplo, los siguientes vectores muestran los minutos que le dedicamos a estudiar viendo videos los primos 5 días de la semana:

Carácter:
```r
vector_str <- c("Lunes", "Martes", "Miercoles", "Jueves", "Viernes")
```
Númerico:
```r
vector_num <- c(20, 35, 25, 50, 35)
```
Logico:
```r
vector_logi <- c(TRUE, FALSE, FALSE, TRUE, TRUE)
```

## Matrices en R
Para que una tabla en R se considere matriz **debe tener los mismos tipos de datos**, pudiendo ser numérico, carácter o lógico. Si tuviera datos diferentes sería un data.frame. Y la matriz se lee **filas x columnas**,  *por ejemplo, 2 filas x 5 columnas (2x5)*.

```r
#     [,1] [,2] [,3] [,4] [,5]
# [1,]   20   35   25   50   35
# [2,]   10   15   30   25   15
```

Para crear una matriz utilizamos la función:
```r
matrix(data = NA, nrow = 1, ncol = 1, byrow = FALSE, dimnames = NULL)
```

## Operadores para comparar y ubicar datos
| Operadores lógicos | Interpretación |
| ------------ | ------------ |
| `==` | Igual |
| `!=` | No igual (Diferente) |
| `<` | Menor que |
| `>` | Mayor que |
| `<=` | Menor o igual que |
| `>=` | Mayor o igual que |
| `\|` | O |
| `!` | No |
| `%in%` | Buscar algo que esté en el dataset |

## Instalar paquetes en R
Para instalar un paquete en R utilizamos la siguiente función:
```r
install.packages("plyr")
```

Output en la Consola:

```r
Installing package into ‘/home/hcartas/R/x86_64-pc-linux-gnu-library/4.1’
.
.
.
* DONE (plyr)
The downloaded source packages are in ‘/tmp/RtmppEuz0V/downloaded_packages’
```

Para activar el paquete despues de su instalación utilizamos la siguiente función:

```r
library(plyr)
```

## Factores en R
Los **factores** son un tipo de dato que tiene **variables categoricas**, es decir solamente **palabras**, **labels** o **etiquetas**. Por ejemplo, el nivel de conocimiento de este lenguaje de programación:

```r
variable_categorica <- c("Básico", "Intermedio", "Avanzado")
```

## Listas en R
Este es un **super objeto** que nos permite **almacenar cualquier otro tipo de objetos**, nos permite almacernar **vectores**, **matrices**, **dataframes**. Todo lo podemos meter en una lista.

## EDA: Exploratory Data Analysis
**EDA (Analisis Exploratorio de Datos)** consiste en la importancia de visualizar los datos antes de enfocarnos en las formulas estadísticas. 

Es como tener un datset, imaginarnos que son unos puntos y que esos puntos son pintura en un balde y los lanzamos a un lienzo en blanco para ver la forma en la que caen, esto nos da pista sobre la forma de los datos que es muy importante para la interpretación.

![](https://i.imgur.com/0H5IcaH.png)

¿Por qué es importante la visualización de los datos antes que las formulas estadísticas?
Imaginemos el siguiente ejemplo, imaginemos que todos somos socios de una cadena de supemercados, tenemos 4 puntos de venta, y nuestros clientes se han quejado porque están haciendo filas muy largas a la hora de pagar en caja a cierta hora del día.

![](https://i.imgur.com/WfTQBVL.png)

Como queremos resolver ese problema decidimos hacer unas mediciones de tiempo en esos cuatro puntos de venta durante ciertos días y bajo diferentes situaciones: cuando dejamos solo 1 caja atendiendo, cuando dejamos 2, y así hasta que están todas nuestras cajas atendiendo, que son 8. Hacemos esto durante unas semanas y reunimos los datos.

![](https://i.imgur.com/wiL4AUh.png)

Ahora que tenemos nuestros datos hacemos nuestra estadística descriptiva para ver que paso, qué medidas vamos a tomar para corregir ese error. 

![](https://i.imgur.com/yNl0SiE.png)

Y entonces nos encontramos que la media de cada una de las variables x para cada punto de venta (dataset) es 9, y lo mismo pasa con la varianza, la desviación estándar, la correlación y la recta de regresión. Y por supuesto pensamos que debió haber un error porque los cuatro supermercados que están ubucados en diferentes puntos de una ciudad no pueden tener el mismo comportamiento de los clientes, esto es imposible. Entonces asumimos que alguien que alguien tomó un dataset y lo copió tres veces y nos quedo la replica tres veces del mismo dataset, eso podría pasar.

![](https://i.imgur.com/motJPcv.png)

Entonces pedimos nuestros **datos crudos**. Y tenemos una tabla con los datos para cada uno de los puntos de venta. 

Para el primer punto de venta en donde esta la flecha ➡ podemos ver que para x tiene el valor de 5, y se repite para el punto de venta 2 y 3, pero para el 4 este es diferente, y si revisamos no tenemos siempre las mismas x ni las mismas y. Entonces nos sorprendemos aún más porque nadie copio dataset, los datos si son diferentes.

![](https://i.imgur.com/2M1hj50.png)

Después de haber revisado todas las formulas estadísticas decidimos visualizar los datos.

Nos encontramos con que efectivamente los 4 datsets tienen la misma recta de regresión pero tienen formas diferentes, conportamientos diferentes:

![](https://i.imgur.com/jgOspRz.png)

Lo que acabamso de ver, es un concepto en estadística muy fuerte que hay que tener en cuenta, y se llama el **Cuarteto de Anscombe**. Y lo que nos dice este cuarteto es la importancia de visualizar los datos antes de enfocarnos en las formulas estadísticas.

Esto es super importante en Data Science para visualizar los datos.

![](https://i.imgur.com/TwAYaYG.png)

## Tipos de visualizaciones en EDA

### Histogramas

![](https://i.imgur.com/KZRz7P4.png)

Una de sus características es que sus barras ban pegadas. Otra es que en orden de la variable x es ascendente, sus valores van de menor a mayor. Tal y como se presenta la distribución de las frecuencias. El histograma nos presenta lo que hay y lo que no hay.

### Gráfica de barras

![](https://i.imgur.com/BActohP.png)

Podemos converir los números a etiquetas.

### Gráfica de líneas

![](https://i.imgur.com/kvtCgd9.png)

Los puntos si los podemos unir y se pueden armar unas líneas.

### Gráfica de dispersión (Scatterplot)

![](https://i.imgur.com/bvfOAxO.png)

Con el Scatterplot mezclamos o cruzamos varialbes continuas o datos númericos, en ningunos de los ejes podemos tener etiquetas, palabras o variables categoricas, solamento números, y los puntos no los podemos unir.

Lo armamos cada vez que vez que ubicamos una coordenamda x y una coordenada y. Son puntos independientes y no los podemos unir. Nos aseguramos de colocar la variable independiente en el eje x y la varaible dependiente en eje y.

Por ejemplo, tenemos un scatterplot que nos cruza las variables Número de cajas con Tiempo espera en filas. Entonces se nos crea la grafica de puntos correspondientes a esas coordenadas.

![](https://i.imgur.com/aa6woDq.png)

### Gráfica de caja

![](https://i.imgur.com/VUN1DQi.png)

Esta nos muestra 5 elementos claves en estadística descriptiva, que son el mínimo, el máximo, el 1er cuartil, la mediana o el 2do cuartil, y el 3er cuartil. 

Antes de gráfica es importante saber interpretar.

## Box Plot y su interpretación
Para poder interpretar el box plot imaginemos el siguiente ejemplo, imaginemos que somos los directores de una cadena de ropa en 4 países y tenemos 197 tiendas.

Hemos evaluado la calificación al servicio y se nos genera una tabla con la calificación a esas 197 tiendas:

![](https://i.imgur.com/pYnPspS.png)

Al ver nos datos en forma de tabla no es facil poder extraer información ahí. Poder ver cual fue la califiación más alta o más baja, y poder hacer una interpretación del comportamiento de estos datos.

Entonces decidimos tomar y graficalos en un Scatterplot. Para ver que forma tienen. Entonces aquí vemos la calificación al servición en el eje y en una escala de 0 a 100. Donde 0 es un pésimo servicio y 100 es un excelente servicio. Cada punto en el lienzo es una tienda, y podemos ver que hay una concentración de puntos, vemos que muchas tiendas tienen una calificación entre 75 y 85, no hay tiendas por arriba de 85 y tampoco hay tiendas por debajo de 40. Solamente vemos eso. Pero no podemos presentar un informe con lo que nos muestra el scatterplot.

![](https://i.imgur.com/mKPPyYE.png)

Entonces decimos ordenar estos datos de menor a mayor. Y cada vez que uno ordena algo de menor a mayor, automáticamente aparece el mínimo y el máximo:

![](https://i.imgur.com/15jsmAn.png)

y qué pasa cuando nos dirigimos al eje x a la mitad de la recta y levantamos una línea perpendicular al eje y. Entonces encontramos el punto que esta en la mitad. Y como está a la mitad del eje x, divide nuestros datos en dos bloques. 50% hacia abajo y 50% hacia arriba. 

Entonces podemos decir que el 50% de nuestras tiendas evaluadas lograron una calificación menor o por debajo de 73.2.

![](https://i.imgur.com/cctMKEs.png)


O que la mitad de las tinedas logró una calificación superior a 73.2.

![](https://i.imgur.com/loZbOdE.png)

Si ahora nos vamos a 1/4 del camino del eje x y levantamos una línea perpendicular al eje y. Como esta al cuarto de camino diremos que el 25% de las tiendas evaluadas lograron tener una calificación inferior al 64.7 o que el 75% de las tiendas lograron una calificación superior al 64.7

![](https://i.imgur.com/iXyP2AF.png)

Si nos vamos a 3/4 de camino por el eje x y levantamos la perpendicular a y, podemos decir que el 75% de nuestras tiendas tienen una calificación inferiro al 76.7 o que el 25% de las tiendas logró una calificación superiro 76.7.

![](https://i.imgur.com/dal0NRP.png)

Esto que acabamos de ver son los 5 números claves en estadística descriptiva que se visualizan en el box plot.

El piso de la caja es el primer cuartil.
El techo de la caja es el tercer cuartil.
La línea que esta dentro de la caja es la mediana o segundo cuartil.
Y las extenciones que están arriba y abajo representan el mínimo y el máximo.

![](https://i.imgur.com/ZvydObJ.png)

Si se dificulta la interpretación en sentido vertical también se puede girar el box plot en sentido horizontal. Dejando el mínimo hacia el lado izquierdo y el máximo hacia el lado derecho. La línea que está dentro de la caja es el segundo cuartil y los otros lados de la caja son primer cuarti y tercer cuartil.

![](https://i.imgur.com/7tKGc9G.png)

Reto:

![](https://i.imgur.com/SnMzQ4i.png)

Veamos la diferencia en la interpretación de un box pot y una gráfica de pastel.

Si grafícamos en un box plot la calificación correspondiente a nuestros punto de venta para este ejemplo, vemos que el segundo o cuarti o la mediana es 6, entonces decimos que la mitad de los puntos lograron una calificación superior a 6 o que la mitad logró una calificación inferior a 6.

![](https://i.imgur.com/XEM6piS.png)

Si lo queremos ver en porcentaje, la grafíca de pastel nos dice que solo el 30% porciento logró una calificación de 6, porque hay 3 números 6 de un total de 10 tiendas evaluadas en este ejemplo.

![](https://i.imgur.com/uZjFjiM.png)

Sería un error decir que, el 50% de las tiendas logró una calificación de 6, porque tendría que ser una grafica de pastel como se muestra a continuación, y no es verdad. Para que fuera el 50% porciento tendríamos que tener 5 calificaciones de 6 en las 10 tiendas evaluadas.

![](https://i.imgur.com/oWL0GGb.png)
