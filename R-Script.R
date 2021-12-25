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


# Cambiar un tipo de dato a otro tipo de dato -----------------------------
# Podemos cambiar el tipo de dato de una variable completa en mtcars
mtcars$vs <- as.logical(mtcars$vs)
mtcars$am <- as.logical(mtcars$am)

str(mtcars) # Visualización de la estructura
