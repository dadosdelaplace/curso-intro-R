# ----- Códigos del manual -----


# Ejemplos de variables unidimensionales (vectores)
c(1, 4, NA, -2, 0)
c("a", NA, "b", "c")
c(TRUE, TRUE, FALSE, TRUE)
c(today() - 1, today(), today() + 1)

# definiendo una matriz sencilla
estaturas <- c(150, 160, 170, 180, 190)
pesos <- c(60, 70, 80, 90, 100)
datos_matriz <- cbind(estaturas, pesos) # Construimos la matriz por columnas
datos_matriz # nuestra primera matriz
View(datos_matriz)

# construir la matriz por filas
rbind(estaturas, pesos) # Construimos la matriz por filas

# otro ejemplo
edades <- c(14, 24, 56, 31, 20, 87, 73) # vector numérico de longitud 7
tlf <- c(NA, 683839390, 621539732, 618211286, NA, 914727164, NA)
cp <- c(33007, 28019, 37005, 18003, 33091, 25073, 17140)
# Construimos la matriz por columnas
datos_matriz <- cbind(edades, tlf, cp) 
datos_matriz

# Añadimos una fila
rbind(datos_matriz, c(27, 620125780, 28051))

# Añadimos una columna
cbind(datos_matriz, "estaturas" = c(160, 155, 170, 181, 174, NA, 165))

# Dimensiones
dim(datos_matriz)
dim(datos_matriz)[1]
dim(datos_matriz)[2]
nrow(datos_matriz)
ncol(datos_matriz)

# Matriz de ceros
matrix(0, nrow = 5, ncol = 3) # 5 filas, 3 columnas, todo 0's

# Matriz a través de un vector
z <- matrix(1:15, ncol = 5) # Matriz con el vector 1:5 con 5 columnas (ergo 3 filas)
z

# Traspuesta
datos_matriz
t(datos_matriz) # Matriz transpuesta

# Operaciones elemento a elemento
datos_matriz / 5
datos_matriz + 3

# Matrices de otros tipos de datos, siempre y cuando las
# columnas sean del mismo tipo e igual longitud, por
# ejemplo una matriz de caracteres o una matriz de valores lógicos

# matriz de caracteres
nombres <- c("Javier", "Carlos", "María", "Paloma")
apellidos <- c("Álvarez", "García", "Pérez", "Liébana")
cbind(nombres, apellidos)

# matriz de valores lógicos
var1 <- c(TRUE, TRUE, FALSE, FALSE, TRUE)
var2 <- c(TRUE, FALSE, FALSE, TRUE, TRUE)
cbind(var1, var2)
cbind(var1, var2) + 1

# Acceder a elementos
x <- c(1, 2, 10, 67, -1, 0)
x[3] # accedemos al tercer elemento 
x[c(3, 5)] # accedemos al tercer y quinto elemento
x[1:4] # accedemos al primero, segundo, tercero, cuarto elemento

# acceder a elementos de matriz
datos_matriz
datos_matriz[1, 3] # elemento (1, 3)
datos_matriz[2, 2] # elemento (1, 3)
datos_matriz[1, ] # fila 1
datos_matriz[, 3] # columna 3

# Si las columnas tienen nombres también podemos hacer
# uso de ellos para acceder a las columnas
datos_matriz[, c("edades", "tlf")]

# Asignar nombres a las filas de una matriz con
# `row.names()` y acceder a filas y columnas por nombres.
row.names(datos_matriz) <- c("Javi", "Laura", "Patricia", "Carlos",
                             "Juan", "Luis", "Carla")
datos_matriz["Javi", "edades"]

# Operaciones por filas y columnas (apply)
datos_matriz <- cbind(estaturas, pesos)
# Media (mean) por columnas (MARGIN = 2)
apply(datos_matriz, MARGIN = 2, FUN = "mean")
# Media por filas (MARGIN = 1)
apply(datos_matriz, MARGIN = 1, FUN = "mean")

estaturas_bis <- c(150, NA, 170, 180, 190)
pesos_bis <- c(60, 70, 80, NA, 100)
datos_matriz_bis <- cbind(estaturas_bis, pesos_bis) 
# Nos devolverá ausente porque en ambas columnas tenemos
apply(datos_matriz_bis, MARGIN = 2, FUN = "mean")
# Media por columnas (MARGIN = 2) ignorando los ausentes
apply(datos_matriz_bis, MARGIN = 2, FUN = "mean", na.rm = TRUE)

# Tablas: data.frames

# Sumamos un año a todas las personas
datos_matriz[, "pesos"] + 1

# ¿Qué sucede si ahora añadimos una columna con los
# nombres (tipo caracter) de cada persona?
nombres <- c("Sonia", "Carla", "Pepito", "Carlos", "Lara", "Sandra", "Javi")
datos_matriz_nueva <- cbind(nombres, datos_matriz)
datos_matriz_nueva[, "edades"] + 1 # error
```

# Las matrices nos permiten almacenar distintas variables 
# SIEMPRE Y CUANDO tengan
#   - Misma longitud
#   - Mismo tipo de dato (o todo números o todo caracteres, pero sin mezclar).

# Nombres
nombres <- c("Sonia", "Carla", "Pepito", "Carlos", "Lara", "Sandra", "Javi")
# Apellidos
apellidos <- c(NA, "González", "Fernández", "Martínez", "Liébana", "García", "Ortiz")
# Código postal
cp <- c(28019, 28001, 34005, 18410, 33007, 34500, 28017)
# Edades
edades <- c(45, 67, NA, 31, 27, 19, 50)
# Teléfono
tlf <- c(618910564, 914718475, 934567891, 620176565, NA, NA, 688921344)
# Estado civil (no lo sabemos de una persona)
casado <- c(TRUE, FALSE, FALSE, NA, TRUE, FALSE, FALSE)
# Fecha de creación (fecha en el que esa persona entra en el sistema)
# lo convertimos a tipo fecha
fecha_creacion <-
  as_date(c("2021-03-04", "2020-10-12", "1990-04-05",
            "2019-09-10", "2017-03-21", "2020-07-07",
            "2000-01-28"))

# Creamos nuestro primer data.frame
tabla <- data.frame(nombres, apellidos, edades, tlf, cp,
                    casado, fecha_creacion)
tabla
class(tabla)

# indicando además el nombre de las columnas
tabla <- data.frame("nombre" = nombres, "apellido" = apellidos, 
                    "edad" = edades, "teléfono" = tlf, 
                    "cp" = cp, "casado" = casado,
                    "fecha_registro" = fecha_creacion)
tabla
View(tabla)

# Selección de columnas y filas

# Añadimos una nueva columna con nº de hermanos/as
hermanos <- c(0, 0, 1, 5, 2, 3, 0)
tabla <- data.frame(tabla, "n_hermanos" = hermanos)
tabla

tabla[, 3] # Accedemos a la tercera columna
tabla[5, ] # Accedemos a la quinta fila
tabla[5, 3] # Accedemos a la tercera variable del quinto registro

# Primer análisis de datos: arrestos en EE. UU.

# install.packages("datasets") # Descomentar si nunca se ha instalado
library(datasets)
datasets::USArrests
View(USArrests)
head(USArrests)

# Obtener el nombre de las variables? Con la función `names()`.
names(USArrests)

# ¿Cómo obtener el nombre de las filas (de los estados)? Con la función `row.names()`.
row.names(USArrests)

# ¿Cómo averiguar el número de registros y el número de variables?
# Con las funciones `dim()`, `nrow()` y `ncol()`.
dim(USArrests)
nrow(USArrests)
ncol(USArrests)

# ¿Cómo seleccionar solo las columnas `Murder` y `Assault`
# para el segundo y el décimo estado?
USArrests[c(2, 10), c("Murder", "Assault")]

# ¿Cómo cambiar el nombre de las variables? Con la función `names()`.
names(USArrests) <- c("asesinato", "agresion",
                      "pobl_urbana", "violacion")

# ¿Cómo seleccionar y filtrar datos?
subset(USArrests, subset = pobl_urbana > 70,
       select = c("asesinato"))
subset(USArrests, subset = pobl_urbana < 70 & agresion > 250,
       select = c("asesinato", "violacion"))

# ----- 📝 Ejercicios -----

# Ejercicio 1: modifica el código para definir una matriz
# `x` de ceros de 3 filas y 7 columnas.
x <- matrix(0, nrow = 3, ncol = 7)
x

# Ejercicio 1: a la matriz anterior, suma un 1 a cada
# número de la matriz y divide el resultado entre 5.
(x + 1) / 5

# Ejercicio 3: tras definir la matriz `x` calcula su
# transpuesta y obtén sus dimensiones
t(x)

# Dimensiones transpuesta: pasa de ser 3x7 a 7x3
dim(t(x))
ncol(t(x)) # número de columnas de la transpuesta
nrow(t(x)) # número de filas de la transpuesta

# Ejercicio 4: el siguiente código define una matriz de
# dimensiones `4 x 3` y calcula la suma por columnas.
# Modifica el código para que realice la suma por filas.
matriz <- matrix(1:12, nrow = 4)
# Suma por filas
apply(matriz, MARGIN = 1, FUN = "sum")

# Ejercicio 5: con la matriz anterior definida como
# `matrix(1:12, nrow = 4)`, calcula la media de todos los
# elementos, la media de cada fila y la media de cada columna.
matriz <- matrix(1:12, nrow = 4)

# media de todos
mean(matriz)
# Media por filas (MARGIN = 1 ya que es una operación por filas)
apply(matriz, MARGIN = 1, FUN = "mean")
# Media por filas (MARGIN = 2 ya que es una operación por filas)
apply(matriz, MARGIN = 2, FUN = "mean")

# Ejercicio 6: el `data.frame` llamado `airquality`,
# del paquete `{datasets}`, contiene variables de la
# calidad del aire de la ciudad de Nueva York desde mayo
# hasta septiembre de 1973. Obtén el nombre de las variables.
library(datasets)
names(airquality)

# Ejercicio 7: obtén las dimensiones del conjunto de datos.
# ¿Cuántas variables hay? ¿Cuántos días se han medido?
dim(airquality)
nrow(airquality)
ncol(airquality)

# Ejercicio 8: modifica el código inferior para que nos
# filtre solo los datos del mes de julio.
filtro_fila <- subset(airquality, subset = Month == 7)
filtro_fila

# Ejercicio 9: del conjunto `airquality` selecciona
# aquellos datos que no sean ni de julio ni de agosto.
filtro_fila <-
  subset(airquality, subset = !(Month %in% c(7, 8)))
filtro_fila

# Ejercicio 10: modifica el siguiente código para
# quedarte solo con las variable `Ozone` y `Temp`.
filtro_col <- subset(airquality,  select = c("Ozone", "Temp"))
filtro_col

# Ejercicio 11: del conjunto `airquality` selecciona los
# datos de temperatura y viento de agosto.
filtro <- subset(airquality, subset = Month == 8,
                 select = c("Temp", "Wind"))
filtro

# Ejercicio 12: calcula el número de filas borradas del
# ejercicio anterior. Tras hacer todo ello, traduce a
# castellano el nombre de las columnas del
# `data.frame` filtrado.
# Filas borradas
nrow(airquality) - nrow(filtro)
# Cambiamos nombres a castellano del conjunto filtrado
names(filtro) <- c("temperatura", "viento")

# Ejercicio 13: añade a los datos originales una columna
# con la fecha completa (recuerda que es del año 1973
# todas las observaciones.
# Construimos las fechas (pegamos año-mes-día con "-")
fechas <- 
  as_date(paste("1973", airquality$Month, airquality$Day,
                sep = "-"))
# Añadimos
data.frame(airquality, fechas)

                                                                                                          