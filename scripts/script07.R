# ----- Códigos del manual -----

# Operaciones aritméticas

# Multiplicamos por 2 a CADA ELEMENTO del vector
x <- c(2, 4, 6)
2 * z

# Sumamos 3 a CADA ELEMENTO DEL VECTOR
z + 3

# Restamos 5 a CADA ELEMENTO DEL VECTOR
z - 5

# Suma de vectores
y <- c(1, 3, 5)
x + y # suma de vectores 

# sumamos dos vectores de distinta longitud
z <- c(1, 3, 5, 7)
x + z

# Operación aritmética de valores lógicos
sum(x < 3) # sumamos el vector de TRUE/FALSE --> número de valores TRUE

# Operaciones estadísticas
sum(y) # suma
mean(y) # media
median(y) # mediana
cumsum(y) # suma acumulada

# Percentiles
y <- c(1, 2, 5, 5, 8, 9, 10, 10, 10, 11, 13, 15, 20, 23, 24, 29)
quantile(y) # Percentiles por defecto: cuartiles (0%-25%-50%-75%-100%)
quantile(y, probs = c(0.15, 0.3, 0.7, 0.9)) # Percentiles p15, p30, p70 y p90

# Operaciones con ausentes
x <- c(21, NA, 13, NA, NA, 25, 36, 17, 19, 5)
sum(x)
# eliminando datos ausentes antes de aplicar la función
sum(x, na.rm = TRUE) 
mean(x, na.rm = TRUE)

# Seleccionar elementos
edades <- c(20, 30, 32, NA, 61)
edades[3] # accedemos a la edad de la tercera persona en la lista
edades[4] # accedemos a la edad de la cuarta persona (que no la tenemos guardada)
edades[c(3, 4)] # queremos acceder a la vez al tercer y cuarto elemento

y <- c("hola", "qué", "tal", "todo", "ok", "?")
y[1:2] # Solo queremos acceder a los elementos en la posición 1 y 2

# Accedemos a los elementos en la posición 1, 2 y además el
# que ocupa la última posición
y[c(1:2, length(y))] 

y
y[-2] # Nos muestra todo y salvo el elemento que ocupa la segunda posición


edades_1 <- c(7, 20, 18, 3, 19, 9, 13, 3, 45)
edades_2 <- c(17, 21, 58, 33, 15, 59, 13, 1, 45)
edades_1[edades_1 >= 18] # mayores de 18 años del conjunto x
edades_2[edades_2 >= 18] # mayores de 18 años del conjunto y

edades_1 >= 18 # donde haya TRUE, lo seleccionará
edades_1[edades_1 >= 18] # mayores de 18 años del conjunto x

x <- c(7, NA, 20, 3, 19, 21, 25, 80, NA)
x[is.na(x)] # solo valores ausentes
x[!is.na(x)] # sin valores ausentes: ! es el símbolo de la negación


# combinar condiciones lógicas
x[x >= 18 & x <= 25] # los valores que cumplen ambas (&): entre 18 y 25 años

# which
x <- c(7, NA, 20, 3, 19, 21, 25, 80, NA)
x[x >= 18] # Accedemos a los elementos que cumplen la condición
which(x >= 18) # Obtenemos los lugares que ocupan los elementos que cumplen la condición
max(x, na.rm = TRUE) # máximo de x (si no eliminamos NA, nos devolverá NA)
min(x, na.rm = TRUE) # mínimo de x (si no eliminamos NA, nos devolverá NA)
which.max(x) # Lugar que ocupa el máximo
which.min(x) # Lugar que ocupa el mínimo

# NULL
x <- c(1, NA, 3, NA, NA, 5, 6)
x[2] # NA: el registro existe pero sin dato
names(x) # No hemos definido el nombre de las variables, así que devuelve NULL

# Nombrando vectores: añadiendo metainformación
x <- c("edad" = 31, "tlf" = 613910687, "cp" = 33007) # cada número tiene un significado distinto
x
x[c("edad", "cp")] # seleccionamos los elementos que tienen ese nombre asignado

names(x) # Consultamos nombres
names(x) <- c("años", "móvil", "dirección") # Cambiamos nombres
names(x) # Consultamos nuevos nombres

# Ordenar
edades <- c(81, 7, 25, 41, 65, 20, 32, 23, 77)
sort(edades) # orden de joven a mayor
sort(edades, decreasing = FALSE) # orden de mayor a joven
order(x) 
x[order(x)] # accedemos a los índices ordenados

    
# ----- 📝 Ejercicios -----

# Ejercicio 1: define el vector `x` como la concatenación
# de los números 1, 10, -1 y 2, y calcula su suma.
# Vector de números
x <- c(1, 10, -1, 2)

# Suma
sum(x)

# Ejercicio 2: define otro vector `y` que contenga los
# números `5, -7, 8, -3`, y haz la suma de `x` e `y`. 
# Vector de números
y <- c(5, -7, 8, -3)

# Suma
x + y

# Ejercicio 3: calcula el número de elementos mayores que 0
# del resultado de la suma de `x + y`. 
sum((x + y) > 0)

# Otra forma
suma <- x + y
sum(suma > 0)

# Ejercicio 4: calcula la versión ordenada del vector `x`.
# Ordenamos el vector (con sort)
sort(x)

# Ordenamos el vector  (con order)
x[order(x)]

# Ejercicio 5: encuentra del vector `x` original el lugar
# (el índice) que ocupa su mínimo y su máximo. 
x<- c(1, 10, -1, 2)

# Encontrando el lugar que ocupa el máximo y mínimo
which.max(x)
which.min(x)

# Ejercicio 6: encuentra del vector `x` los elementos
# mayores que 1 y menores que 7. Encuentra una forma de
# averiguar si todos los elementos son o no positivos. 
# Vector lógico: mayores que 1 y menores que 7
x > 1 & x < 7

# ¿Son todos positivos? Mira también any()
all(x > 0)

# Ejercicio 7: define el vector `c(-1, 0, 4, 5, -2)`,
# calcula la raíz cuadrada del vector y determina que
# lugares son ausente de tipo `NaN`. 
# Vector
z <- c(-1, 0, 4, 5, -2)

# ¿Cuáles son ausentes tras aplicar la raíz cuadrada?
is.nan(sqrt(z))

# Ejercicio 8: define el vector de los primeros números
# impares (hasta el 21) y extrae los elementos que ocupan
# los lugares 1, 4, 5, 8. Elimina del vector el segundo
# elemento
# Vector de impares (de 1 a 21 saltando de dos en dos)
x <- seq(1, 21, by = 2)

# Seleccionamos elementos
x[c(1, 4, 5, 8)]

# Eliminamos elementos
y <- x[-2]
y

# Ejercicio 9: define una cadena de caracteres
# `texto <- c("oso polar", "oso pardo", "salamandra", "buho", "lechuza", "oso malayo")`.
# Usa `str_count()` para contabilizar el número de osos.
# Usa `str_starts()` para saber que elemento del vector es
# un oso o no. Obten la longitud de cada cadena. 
# Sustituye en todas las cadenas la `o` por `*`</summary>
texto <- c("oso polar", "oso pardo", "salamandra", "buho", "lechuza", "oso malayo")

# Cuenta el número de cadenas que contienen la palabra "oso"
str_count(texto, "oso")

# Nos devuelve TRUE en las cadenas que empiecen por "oso"
str_starts(texto, "oso")
str_ends(texto, "oso") # devuelve todo FALSE

# Longitud de cada cadena
str_length(texto)

# Sustituimos en todas las oes por *
str_replace_all(texto, "o", "*")

  
  