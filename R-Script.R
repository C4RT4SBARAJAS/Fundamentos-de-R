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
# Caracter:
vector_str <- c(Lunes, Martes, Miercoles, Jueves, Viernes)

# Númerico:
vector_num <- c(20, 35, 25, 50, 35)

# Logico:
vector_log <- c(TRUE, FALSE, FALSE, TRUE, TRUE)

