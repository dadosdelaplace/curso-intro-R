# ----- Códigos del manual -----

# Variables numéricas (individuales)
a <- 1
b <- 2
a + b

# Clase de las variables
class(a)
class(b)
class(a + b)

# comprobar su naturaleza con `typeof()`, que nos devuelve
# la naturaleza del dato tal cual es guardada en `R`.
typeof(a)
typeof(b)
typeof(a + b)

# Dato numérico (entero)
a <- 1L
class(a)
typeof(a)

# Definimos dos variables numéricas
a <- 1
b <- -2

# Suma y resta
a + b
a - b

# Multiplicación y división
a * b
a / b

# Raíz cuadrada
sqrt(a)

# Potencias
a^2
b^3

# Variables de tipo caracter (texto)
edad <- 32
nombre <- "Javier"
class(nombre)
typeof(nombre)

# Nuestra primera función: paste
nombre <- "Javier"
apellido <- "Álvarez"
paste(nombre)
paste0(nombre, apellido) # todo junto sin espacio

paste(nombre, apellido, sep = "") # todo junto
paste(nombre, apellido, sep = " ") # separados por un espacio
paste(nombre, apellido, sep = ".") # separados por un punto .
paste(nombre, apellido, sep = ",,") # separados por dos comas.

# Nuestro primer paquete: glue
# install.packages("glue") # solo la primera vez
library(glue)
edad <- 32
paste("La edad es de", edad, "años")
glue("La edad es de {edad} años")

unidades <- "años"
glue("La edad es de {edad} {unidades}")

# Otra forma sin definir variables a priori
glue("La edad es de {32} años")

# Manejando textos: paquete stringr




# ----- 📝 Ejercicios -----

# Ejercicio 1: define una variable `edad` que guarde tu
# edad y otra `nombre` con tu nombre.
edad <- 32 # tipo numeric
nombre <- "Javier" # tipo caracter

edad
nombre

# Ejercicio 2: define otra variable con tus apellidos y
# junta las variables `nombre` y `apellidos` en una sola
# cadena de texto que guardes en `nombre_completo`. 
apellidos <- "Álvarez Liébana"

# Pegamos
nombre_completo <- glue("{nombre} {apellidos}")
nombre_completo

# Otra forma
nombre_completo <- paste(nombre, apellidos)
nombre_completo

# Ejercicio 3: define dos variables numéricas y realiza la
# suma de ambas. Obtén con `class()` la clase de dicha variable suma
# Definimos dos variables numéricas
a <- 1
b <- -2
a + b
class(a + b)

# Ejercicio 4: construye una frase que diga
# «Hola, me llamo ... y tengo ... años».
edad <- 32
glue("Hola, me llamo {nombre_completo} y tengo {edad} años")

# Ejercicio 5: define una cadena de texto con
# `"mi código postal es 28045"`. Calcula la longitud de
# la cadena y extrae la subcadena del lugar 3 al 17 con
# `str_sub()` (guarda dicha subcadena en una variable `y`)
x <- "mi código postal es 28045"
y <- str_sub(x, 3, 17)
y

# Ejercicio 6: con la subcadena `y` del ejercicio anterior,
# elimina los espacios solo de la izquierda y convierte a mayúsculas
# Todo en una línea
str_to_upper(str_trim(y, side = "left"))
# Paso a paso
z <- str_trim(y, side = "left")
str_to_upper(z)

# Ejercicio 7: con la cadena `x` original, sustituye la
# subcadena "código postal" por "cp".
str_sub(x, 4, 16) <- "cp"









