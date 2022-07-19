# ----- Códigos del manual -----

edades <- c(14, 17, 24, 56, 31, 20, 87, 73)
all(edades >= 18) # todos mayores de edad
any(edades < 18) # existe algun menor de edad

# if
if (any(edades < 18)) { # TRUE si al menos una persona mayor de edad
  print("existe alguna persona mayor de edad")
}

if (all(edades >= 18)) { # TRUE si TODOS son mayores de edad
  print("todas las personas son mayores de edad")
}

# if - else {}
if (all(edades >= 18)) { # TRUE si TODOS son mayores de edad
  print("todas las personas son mayores de edad")
} else { # si hay alguno menor de edad 
  print("existe alguna persona menor de edad")
}

if (all(edades >= 18)) { # TRUE si TODOS son mayores de edad
  print("todas las personas son mayores de edad")
} else { # si hay alguno menor de edad 
  print(glue("Existen menores de edad. Sus edades son: {paste(edades[edades < 18], collapse = '-')} años"))
}

# if - else anidados
if (all(edades >= 18)) { # TRUE si TODOS son mayores de edad
  print("todas las personas son mayores de edad")
} else if (all(edades >= 16)) { # si todos los menores de edad tienen >=16
  print("Existe alguna persona menor de edad pero todos con 16 años o más")
} else {
  print("Existe alguna persona menor de 16 años")
}

# ifelse () vectorizado
# NA si no cumple la condición, la edad si se cumple.
ifelse(edades >= 18, edades, NA)

nombres <- c("Juan", "María", NA, NA, "Lucía", "Carmen", "Javier",
             NA, "Carlos", NA, "Gregorio", "Paloma")

# Si tiene ausente --> "nombre_desconocido"
# Si no tiene ausente --> nombres originales
nombres <- ifelse(is.na(nombres), "nombre_desconocido", nombres)
nombres


# ----- 📝 Ejercicios -----

# Ejercicio 1: modifica el código inferior para imprimir
# un mensaje por pantalla si todos los datos del conjunto
# `airquality` son de meses que no sean enero.
# install.packages("dataset") # solo la primera vez
library(datasets) # paquete con los datos
mes <- airquality$Month

if (all(mes != 1)) { # todos con mes distinto de 1
  
  print("Ningún dato es del mes de enero")
  
}

# Ejercicio 2: modifica el código inferior para guardar
# en una variable `temperatura_alta` un valor `TRUE`
# si alguno de los registros tiene una temperatura mayor
# a 90 (están en Farenheit) y un `FALSE` en caso contrario.
temperatura <- airquality$Temp
temperatura_alta <- FALSE # por defecto FALSE
if (any(temperatura > 90)) {
  
  temperatura_alta <- TRUE # si se cumple la condición, a TRUE
  
}

# Ejercicio 3: modifica el código inferior para imprimir
# un mensaje por pantalla si alguno de los días supera
# la temperatura de 100.
temperatura <- airquality$Temp

if (any(temperatura > 100)) { # nos basta con uno
  
  print("Alguno de los registros tiene temperatura superior a 100 Farenheit")
  
}

# Ejercicio 4: del paquete `{lubridate}`, la función
# `hour()` nos devuelve la hora de una fecha dada, y la
# función `now()` nos devuelve fecha y hora del momento
# actual. Con ambas funciones, y usando `if`, imprime por
# pantalla  `"buenas noches"` solo a partir de las 21 horas. 
# Cargamos librería
library(lubridate)

# Fecha-hora actual
fecha_actual <- now()

# Estructura if
if (hour(fecha_actual) > 21) {
  
  cat("Buenas noches") # print/cat dos formas de imprimir por pantalla
}

# Ejercicio 5: con las funciones del ejercicio anterior,
# y usando una estructura `if-else`, imprime por pantalla
# (con `cat()` o `print()`) los mensajes `"buenos días"`
# (de 6 a 14 horas), `"buenas tardes"` (de 14 a 21 horas)
# o `"buenas noches"` (de las 21 a las 6 horas). 
# Fecha actual
fecha_actual <- now()

# Estructura if-else
if (hour(fecha_actual) > 6 & hour(fecha_actual) < 14) {
  
  cat("Buenos días")
  
} else if (hour(fecha_actual) > 14 & hour(fecha_actual) < 21) {
  
  cat("Buenas tardes")
  
} else {
  
  cat("Buenas noches")
}

# Ejercicio 6: realiza el ejercicio anterior pero sin
# estructura de llaves, de forma concisa con `ifelse()`.
# Mira la ayuda si la necesitases poniendo `? ifelse` en consola.
# Fecha actual
fecha_actual <- now()

# Estructura if-else
cat(ifelse(hour(fecha_actual) > 6 & hour(fecha_actual) < 14,
           "Buenos días",
           ifelse(hour(fecha_actual) > 14 &
                    hour(fecha_actual) < 21,
                  "Buenas tardes", "Buenas noches")))



