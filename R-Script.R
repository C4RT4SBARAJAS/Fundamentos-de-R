# Los primeros cálculos con R y variables ---------------------------------

# Suma
2+4

# Resta
4-2

# Exponente
2^2


# Creación de una Variable en R -------------------------------------------
Nombre_de_la_Variable <- Función

orangeec <- read.csv("~/personalProjects/proyecto-Fundamentos-de-R/orangeec.csv")


# Visualización de nuestro Dataset ----------------------------------------
View(orangeec)
View(mtcars)

# Suma de variables -------------------------------------------------------
Escuela <- 3
Trabajo <- 7
Transporte <- 1
Estudio <- 3
Tiempo_al_día <- Escuela + Trabajo + Transporte + Estudio

Tiempo_al_día # Visualización de la variable


# Instalar paquetes en R --------------------------------------------------
# install.packages("nombre_del_paquete")


# Estructura de nuestro Dataset -------------------------------------------
str(mtcars) # El cual es un data.frame con	32 obs y  11 variables, compuesta de datos de tipo númerico.


# Realizar una pregunta a la Documentación de R ---------------------------
?mtcars


# Tipos de datos de las variables de mtcars -------------------------------
class(mtcars$mpg)
class(mtcars$vs)

# Clonar un Dataset -------------------------------------------------------
mtcars_new <- mtcars

# Cambiar el tipo de dato de una variable a otro tipo de dato -------------
# Podemos cambiar el tipo de dato de una variable completa en mtcars
mtcars_new$vs <- as.logical(mtcars_new$vs)
mtcars_new$am <- as.logical(mtcars_new$am) # Debemos aseguramos de asignar la variable correcta para modificar los valores

str(mtcars_new) # Visualización de la estructura


# Resumen estadístico de las variables de mi Dataset ----------------------
summary(orangeec)
summary(mtcars)


# Conversión de unidades para la variable weight en mtcars ----------------
mtcars_new$wt <- (mtcars_new$wt*1000)/2.20462 # Conversión a Kilogramos

# Pudiendolo hacer también con la función transform()
?transform

mtcars_new <- transform(mtcars_new, wt = (wt*1000)/2.20462)


# Vectores en R -----------------------------------------------------------
# Tiempo de estudio en minutos de Lunes a Viernes:
?vector

# Responder a la pregunta ¿Cual es el tiempo de estudio para cada día?

Tiempo_estudio_videos <- c(Lunes = 20, Martes = 35, Miercoles = 25, Jueves = 50, Viernes = 35)
Tiempo_estudio_lecturas <- c(Lunes = 10, Martes = 15, Miercoles = 30, Jueves = 25, Viernes = 15)

Tiempo_estudio_diario_total <- Tiempo_estudio_videos + Tiempo_estudio_lecturas
print(Tiempo_estudio_diario_total)


# Matrices en R -----------------------------------------------------------
# Tiempo de estudio en minutos de Lunes a Viernes:
?matrix

# Responder a la pregunta ¿Cual es el tiempo de estudio para cada día?

tiempo_estudio_diario_total <- matrix(c(Tiempo_estudio_videos, Tiempo_estudio_lecturas), nrow = 2, ncol = 5, byrow = TRUE, dimnames = list(c("Tiempo de estudio en videos", "Tiempo de estudio en lecturas"), c("Lunes", "Martes", "Miercoles", "Jueves", "Viernes")))

colSums(tiempo_estudio_diario_total)


# Agregar nuevas filas y columnas a una matriz ----------------------------
# Para agregar una nueva fila:
?rbind

tiempo_estudio_diario_matriz <- tiempo_estudio_diario_total

tiempo_estudio_diario_matriz <- rbind(tiempo_estudio_diario_matriz, "Tiempo de estudio en escuela" = c(40, 50, 35, 40, 50))

# Para agregar una nueva columna:
tiempo_estudio_diario_matriz <- cbind(tiempo_estudio_diario_matriz, "Sabado" = c(40, 35, 50))

# Responder nuevamente a la pregunta ¿Cual es el tiempo de estudio para cada día?

colSums(tiempo_estudio_diario_matriz)


# Ubicar elementos en una matriz ------------------------------------------
# Para ubicar un elemento usamos los [corchetes], el primer número es la fila [1,], el segundo número es la columna [1, 5].

# Responder a la pregunta ¿Cuantos minutos le dedicamos a estudiar en videos el día viernes?

tiempo_estudio_diario_matriz[1,5]


# Operadores lógicos ------------------------------------------------------

# Responder a la pregunta utilizando el dataset mtcars ¿Qué carros tienen menos de determinados cilindros?

mtcars_new[mtcars_new$cyl<6,]
mtcars_new[mtcars_new$cyl>6,]

# También podemos responder la pregunta utilizando la función:
?subset

subset(mtcars_new, cyl<6, select = cyl)
subset(mtcars_new, cyl>6, select = cyl)

# Responder a la pregunta utilizando el dataset orangeec ¿Qué paises tienen un PIP Percápita (GDP.PC) mayor o igual a 15,000 dolares?

orangeec[orangeec$GDP.PC>=15000,]

subset(orangeec, GDP.PC>=15000, select = c(Country, GDP.PC))

# Responder a la pregunta ¿Qué paises tienen un aporte a su PIP a través de la Economía Naranja (Creat.Ind...GDP) que sea menor o igual al 2%?

orangeec[orangeec$Creat.Ind...GDP<=2,] #Los NA significan que no hay valores para analizar de la variable que estamos utilizando.

subset(orangeec, Creat.Ind...GDP<=2, select = c(Country, Creat.Ind...GDP))

# Responder a la pregunta utilizando el dataset orangeec ¿Cuales son los paises cuya penetración de internet (Internet.penetration...population) sea mayor al 80% y además, que la inversión en educación que hace ese país con respecto a su PIP (Education.invest...GDP) sea mayor al 4.5%?

subset(orangeec, Internet.penetration...population>80 & Education.invest...GDP>4.5, select = c(Country, Internet.penetration...population, Education.invest...GDP))

# Responder la pregunta ¿Cual es el aporte en PIP de Economía Naranja (Creat.Ind...GDP) los paises cuya penetración de internet (Internet.penetration...population) sea mayor al 80% y además, que la inversión en educación que hace ese país con respecto a su PIP (Education.invest...GDP) sea mayor al 4.5%

subset(orangeec, Internet.penetration...population>80 & Education.invest...GDP>4.5, select = c(Country, Creat.Ind...GDP)) # Aquí nos es útil el argumento select


# Cambiar el nombre a una variable ----------------------------------------
# A continuación cambiaremos el nombre de la variable de aporte en PIP de Economía Naranja. Es decir: (Creat.Ind...GDP)

# Debido a que utilizaremos una función que no esta disponible en R básico instalaremos un paquete que la contiene:
install.packages("plyr")

# Para activar el paquete utilizamos la siguiente función:
library(plyr)

# Para renombrar la variable utilizamos la función rename:
?rename

orangeec <- rename(orangeec, replace = c("Creat.Ind...GDP"="Aporte.Ec.Nja"))


# Factores en R -----------------------------------------------------------
# Los factores son datos de tipo categorico y para crearlos nos aseguramos de definir etiquetas o palabras que definen esas categorias. Por ejemplo, el nivel de conocimiento acerca de este lenguaje de programación:

variable_categorica <- c("Básico", "Intermedio", "Avanzado")
print(variable_categorica)


# Echar un vistazo a nuestro dataset --------------------------------------
# Para visualizar los 6 primeras filas de nuestro dataset:
?head
head(mtcars_new)
head(orangeec, n = 10) # Primeas 10 filas

# Para visualizar los últimas 6 filas de nuestro dataset:
?tail
tail(orangeec)
tail(mtcars_new, n = 5) # Últimas 5 filas

# Otra manera de visualizar la estructura de nuestro dataset:
install.packages("dplyr")
