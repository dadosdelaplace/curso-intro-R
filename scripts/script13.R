# ----- Códigos del manual -----

# Primera función
# Definición del nombre de función y argumentos de entrada
calcular_area <- function(lado_1, lado_2) {
  
  # Cuerpo de la función (lo que hace)
  area <- lado_1 * lado_2
  
  # Resultado (lo que devuelve)
  return(area)
  
}

# Sin guardar
calcular_area <- function(lado_1, lado_2) {
  
  # Resultado que devolvemos
  return(lado_1 * lado_2)
  
}

# Aplicación de la función con los parámetros por defecto
calcular_area(5, 3) # área de un rectángulo 5 x 3 
calcular_area(1, 5) # área de un rectángulo 1 x 5
calcular_area(3, 3) # área de un rectángulo 3 x 3 

# Definición del nombre de función y argumentos de entrada
# por defecto lado_2 = lado_1
calcular_area <- function(lado_1, lado_2 = lado_1) {
  
  # Cuerpo de la función
  area <- lado_1 * lado_2
  
  # Resultado que devolvemos
  return(area)
  
}
calcular_area(lado_1 = 5) # cuadrado: si no indicamos nada, lado_2 = lado_1
calcular_area(lado_1 = 5, lado_2 = 7) # rectángulo

# Definición del nombre de función y argumentos de entrada
calcular_area <- function(lado_1, lado_2 = lado_1) {
  
  # Cuerpo de la función
  area <- lado_1 * lado_2
  
  # Resultado
  return(list("area" = area, "lado_1" = lado_1, "lado_2" = lado_2))
  
}
salida <- calcular_area(5, 3)
salida
salida["area"]
salida["lado_1"]
salida["lado_2"]

# Equivalente a calcular_area(5, 3)
calcular_area(lado_1 = 5, lado_2 = 3)

# Variables locales/globales
x <- 1
funcion_ejemplo <- function() {
  
  print(x) # No devuelve nada per se, solo realiza la acción de imprimir en consola
}
funcion_ejemplo()

x <- 1
funcion_ejemplo <- function() {
  
  x <- 2
  print(x) # lo que vale dentro
}
funcion_ejemplo() # lo que vale dentro
print(x) # lo que vale fuera

x <- 1
y <- 2
funcion_ejemplo <- function() {
  
  x <- 3 # no cambia globalmente, solo localmente
  y <<- 0 # cambia globalmente
  print(x)
  print(y)
}
funcion_ejemplo() # lo que vale dentro
x # lo que vale fuera
y # lo que vale fuera

# ----- 📝 Ejercicios -----

# Ejercicio 1: modifica el código inferior para definir
# una función llamada `funcion_suma`, de forma que dados
# dos elementos, devuelve su suma.
# Definimos función
funcion_suma <- function(x, y) {
  
  # Sumamos
  suma <- x + y
  
  # Devolvemos la salida
  return(suma)
}

# Aplicamos la función
funcion_suma(3, 7)

# Ejercicio 2: modifica el código inferior para definir
# una función llamada `funcion_producto`, de forma que
# dados dos elementos, devuelve su producto.
# Definimos función
funcion_producto <- function(x, y) {
  
  # Multiplicamos
  producto <- x * y
  
  # Devolvemos la salida
  return(producto)
}

# Aplicamos la función
funcion_producto(3, -7)

# Ejercicio 3: modifica el código inferior para definir una
# función llamada `funcion_producto`, de forma que dados
# dos elementos, devuelve su producto, pero que por
# defecto calcule el cuadrado (es decir, por defecto un
# solo argumento, y el resultado sea el número por sí mismo)

# Definimos función
funcion_producto <- function(x, y = x) {
  
  # Multiplicamos
  producto <- x * y
  
  # Devolvemos la salida
  return(producto)
}
# Aplicamos la función
funcion_producto(3) # por defecto x = 3, y = 3
funcion_producto(3, -7)


# Ejercicio 4: define una función llamada `igualdad_nombres`
# que, dados dos nombres `persona_1` e `persona_2`, nos
# diga si son iguales o no. Hazlo considerando importantes
# las mayúsculas, y sin que importen las mayúsculas.
# Recuerda que con `toupper()` podemos pasar todo un
# texto a mayúscula.

# Distinguiendo mayúsculas
igualdad_nombres <- function(persona_1, persona_2) {
  
  return(persona_1 == persona_2)
}
igualdad_nombres("Javi", "javi")
igualdad_nombres("Javi", "Lucía")

# Sin importar mayúsculas
igualdad_nombres <- function(persona_1, persona_2) {
  
  return(toupper(persona_1) == toupper(persona_2))
}
igualdad_nombres("Javi", "javi")
igualdad_nombres("Javi", "Lucía")

  
# Ejercicio 5: Ejercicio 5: define una función llamada
# `pares` que, dados dos números `x` e `y`, nos diga si la
# suma de ambos es par o no.

# Definimos función
pares <- function(x, y) {
  
  # Sumamos
  suma <- x + y
  
  # Comprobamos si es par
  par <- suma %% 2 == 0
  
  # Devolvemos la salida
  return(par)
}

# Aplicamos la función
pares(1, 3) # suma 4 (par)
pares(2, 7) # suma 9 (impar)

  
# Ejercicio 6: define una función llamada `pasar_a_celsius`
# que, dada una temperatura $x$ en Fahrenheit, la convierta
# a grados Celsius ($ºC = (ºF - 32) * \frac{5}{9}$).
# Aplica la función a la columna `Temp` del conjunto
# `airquality`, e incorpórala al fichero en una nueva columna `Temp_Celsius`.
# Definimos función
pasar_a_celsius <- function(x) {
  
  # Temperatura en Celsius
  x_celsius <- (x - 32) * (5 / 9)
  
  # Devolvemos la salida
  return(x_celsius)
}

# Aplicamos la función
pasar_a_celsius(0)
pasar_a_celsius(80)

# Aplicamos
data.frame(airquality,
           "Temp_Celsius" = pasar_a_celsius(airquality$Temp))




