# ----- Códigos del manual -----

# Vectores numéricos
edades <- c(32, 27, 60, 61)
edades

# longitud de un vector
length(edades)

# concatenar a su vez vectores
c(edades, edades, 8)

# comando `seq()`
seq(1, 31) # secuencia desde 1 hasta 31 de uno en uno

# Más corto
n <- 31
1:n # secuencia desde 1 hasta n (31) de uno en uno
n:1 # secuencia decreciente

seq(1, 10, by = 0.5) # secuencia desde 1 a 10 de 0.5 en 0.5
seq(1, 21, by = 1.7) # secuencia desde 1 a 21 de 1.7 en 1.7

seq(1, 50, l = 11) # secuencia desde 1 a 50 de longitud 11
seq(1, 50, l = 8) # secuencia desde 1 a 50 de longitud 8

# Comando rep
rep(0, 7) # vector de 7 ceros
rep(c(0, 1, 2), 4) # repetimos el vector c(0, 1, 2) 4 veces
rep(c(0, 1, 2), each = 4) # cuatro 0, luego cuatro 1, luego cuatro 2


# Vectores de caracteres (texto)
mi_nombre <- c("Mi", "nombre", "es", "Javier")
mi_nombre

# Diferencias con vector y no vector
variable <- "Mi nombre es Javier"
class(variable)
str_length(variable)

vector <- c("Mi", "nombre", "es", "Javier")
class(vector)
str_length(vector)

str_to_lower(vector)
str_detect(vector, "i") # TRUE --> si tiene letra i

paste(mi_nombre, collapse = "") # todo junto
paste(mi_nombre, collapse = " ") # separados por un espacio
paste(mi_nombre, collapse = ".") # separados por un punto .
paste0(mi_nombre) # todo junto sin nada separando

paste0("persona", 1:7) # a la palabra «persona» le pegamos los números del 1 al 7
paste("persona", 1:7, sep = "_") # separado por una barra baja

library(glue)
edad <- 10:13 # edades
glue("La edad es de {edad} años")

# Otra forma sin definir variables a priori
glue("La edad es de {10:13} años")

# Vectores lógicos (TRUE/FALSE)

x <- c(15, 20, 23, 31, 27, 7, 29, 10)
x < 22

x <= 22
x > 30
x >= 15

x == 15
x != 15

# dato ausente (por error del aparato ese día), la condición
# evaluada también sería ausente
y <- c(15, 20, NA, 31, 27, 7, 29, 10)
y < 22

# condiciones pueden ser combinadas
x < 30 & x > 15 # (ambas deben darse)
x < 30 | x > 15 # basta que una se de

# ----- 📝 Ejercicios -----

# Ejercicio 1: modifica el código inferior para crear un
# vector de nombre `vector_num` que contenga los números 1, 5 y -7.

# Vector de números
vector_num <- c(1, 5, -7)
vector_num

# Ejercicio 2: define un vector que contenga los
# números 1, 10, -1 y 2, y guárdalo en una variable
# llamada `vector_num`. 
# Vector de números
vector_num <- c(1, 10, -1, 2)
vector_num

# Ejercicio 3: obtén la longitud del vector anterior `vector_num`. 
# Longitud del vector
length(vector_num)

# Ejercicio 4 crea un vector con las palabras
# "Hola", "me", "llamo" (y tu nombre y apellidos), y
# pega luego sus elementos de forma que la frase esté
# correctamente escrita en castellano.
# Tras hacerlo, añade "y tengo 30 años"
# Definiendo el vector
vector_char <- c("Hola", "me", "llamo", "Javier",
                 "Álvarez", "Liébana")

# Pegamos
frase <- paste(vector_char, collapse = " ")
frase

# Añadimos frase
glue("{frase} y tengo 30 años.")

# Otra forma
paste0(frase, " y tengo 30 años.")

# Otra forma
paste(frase, "y tengo 30 años.")

# Ejercicio 5: el código inferior crea una secuencia de números,
# que empieza en `-1`, que acaba en `32`, y que va saltando de 2 en 2.
# Modíficalo para que haga el salto de 3 en 3 y guárdalo en
# una variable llamada `secuencia`
seq(-1, 32, by = 2)

secuencia <- seq(-1, 32, by = 3)
secuencia
length(secuencia) # longitud de la secuencia


# Ejercicio 6: crea una secuencia de números, que empiece
# en `-1`, que acabe en `32`, y que tenga longitud 12.
secuencia <- seq(-1, 32, l = 12)
secuencia
length(secuencia) # longitud de la secuencia

  
# Ejercicio 7: crea una secuencia que empiece en 1 y recorra
# todos los naturales hasta el 10. Después crea otra secuencia
# de longitud 7 que todos los números sean `3`.  
1:10
rep(3, 7) # secuencia repetida

# Ejercicio 8: crea una secuencia que repita 5 veces el patrón `1, 2, 3`.
# Después crea otra que repita dicho patrón pero de forma intercalada,
# con 5 veces `1`, después 5 veces `2` y después 5 veces `3`.
rep(c(1, 2, 3), 5) # repetimos patrón (1, 2, 3) 5 veces
rep(c(1, 2, 3), each = 5) # repetimos patrón alternado


# Ejercicio 9: crea una variable
# `x <- c("oso pardo", "oso polar", "ballena", "grillo", "oso panda", "perro")`.
# Haciendo uso de `str_length()` calcula la longitud de cada cadena de texto
# Haciendo uso de `str_detect()` detecta los animales que son un oso.
x <- c("oso pardo", "Oso polar", "ballena", "grillo", "OSO panda", "perro")
str_length(x) # longitud
# OJO! antes hay que pasar todo a mayúscula o minúscula, nos da igual que sea oso, OSO, Oso, etc
str_detect(str_to_lower(x), "oso") 
