# ----- Códigos del manual -----

# for
for (i in 1:4) {
  
  print(x[i]^2) # que lo imprima
  
}

# otros índices
for (i in c(1, 3, 4)) {
  
  print(x[i]^2) # que lo imprima
  
}

# guardamos en variable
y <- rep(0, 4)
for (i in 1:4) {
  
  y[i] <- x[i]^2
  
}
y

# Equivalente
y <- x^2
y

# otro ejemplo
nombres <- c("Javi", "Laura", "Carlos", "Lucía", "Mar")
edades <- c(32, 51, 18, 43, 29)

# Recorremos cada uno de los 5 elementos e imprimimos un
# mensaje que depende de ese índice i
for (i in 1:5) { 
  
  print(glue("{nombres[i]} tiene {edades[i]} años")) 
  
}

for (i in 1:length(nombres)) { 
  
  print(glue("{nombres[i]} tiene {edades[i]} años")) 
  
}

# otros índices
library(stringr)
dias_semana <- c("lunes", "martes", "miércoles", "jueves",
                 "viernes", "sábado", "domingo")

for (dias in dias_semana) { # dias recorre los días de la semana
  
  print(str_to_upper(dias)) # Imprimimos en mayúsculas el día
}

# for + if
for (i in 1:nrow(swiss)) {
  
  # si cumple la condición dicha fila, ponemos ausente.
  if (swiss$Fertility[i] > 80) { 
    
    swiss$Fertility[i] <- NA
    
  }
}
swiss

# Esto sería exactamente equivalente al `ifelse`
# vectorizado que vimos en el tema anterior
data("swiss") # lo cargamos de 0
swiss$Fertility <- ifelse(swiss$Fertility > 80, NA, swiss$Fertility)
swiss

# ¿Te acuerdas de las operaciones por filas y columnas que
# hicimos con los `apply()`? Podemos hacer lo mismo
# (aunque menos eficiente) con un bucle: vamos a sumar las
# filas del conjunto `swiss`. Para ello antes definiremos
# una variable llena de ceros que luego rellenaremos, de
# tamaño igual al número de filas, con `suma <- rep(0, nrow(swiss))`
suma <- rep(0, nrow(swiss))
for (i in 1:nrow(swiss)) {
  
  suma[i] <- sum(swiss[i, ])
}
suma

# while
ciclos <- 1
# Mientras el número de ciclos sea inferior 5, imprime
while(ciclos <= 5) {
  
  print(paste("Todavía no, vamos por el ciclo ", ciclos)) # Pegamos la frase al número de ciclo por el que vayamos con paste
  ciclos <- ciclos + 1
  
}

# break/next
for(i in 1:10) {
  if (i == 7) {
    
    break # si i es 7, el bucle frena aquí (nunca llegará a imprimir el 7 ni los sucesivos)
    
  }
  print(i)
}

for(i in 1:10) {
  if (i == 7) {
    
    next # si i es 7, la iteración frenará aquí y pasará a la siguiente por lo que imprimirá todos menos el 7
    
  }
  print(i)
}

# repeat
conteo <- 0
repeat { 
  
  conteo <- conteo + 1
  if (conteo >= 100) { break }
  
}
conteo



# ----- 📝 Ejercicios -----

# Ejercicio 1: modifica el código interior para diseñar un
# bucle `for` de 5 iteraciones que recorra los 5 primeros
# impares y les sume uno.
for (i in seq(1, 9, by = 2)) {
  
  print(i + 1)
}

# Otra
for (i in c(1, 3, 5, 7, 9)) {
  
  print(i + 1)
}

# Ejercicio 2: modifica el código interior para diseñar un
# bucle `while` que parta con una variable `conteo <- 1`
# y pare cuando llegue a 6.
conteo <- 1
while (conteo < 6) {
  
  print(conteo)
  conteo <- conteo <- conteo + 1
}


# Ejercicio 3: construye un bucle que recorra las
# primeras 8 filas del conjunto de datos `datasets::airquality`
# y que imprima un mensaje con la temperatura
for (i in 1:8) {
  print(glue("La temperatura es de {airquality$Temp[i]}ºF"))
}


# Ejercicio 4: diseña un bucle `for` de 200 iteraciones
# que, empezando en un valor inicial de 100 (euros), te
# sume 3€ si el número actual es par y te reste 5€ si es impar.

# dinero inicial
dinero <- 100

# Bucle for
for (i in 1:200) {
  
  dinero <- ifelse(dinero %% 2 == 0, dinero + 3, dinero  - 5)
  
}
dinero


# Ejercicio 5: diseña el anterior bucle pero guardando
# el dinero de cada iteración.
# vector de importes
dinero <- rep(0, 201)
dinero[1] <- 100 # dinero inicial

# Bucle for
for (i in 2:201) {
  
  # si dinero[i - 1] es par o  impar
  dinero[i] <- ifelse(dinero[i - 1] %% 2 == 0, dinero[i - 1] + 3,
                      dinero[i - 1]  - 5)
  
}
dinero

# Ejercicio 6: diseña el bucle del ejercicio 4 parando
# cuando no nos quede dinero.
dinero <- 100 # dinero inicial

# Bucle while
while (dinero > 0) {
  
  dinero <- ifelse(dinero %% 2 == 0, dinero + 3, dinero - 5)
  
}
dinero

  
  
  
