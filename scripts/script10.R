# ----- Códigos del manual -----

# primera lista
variable_1 <- c("Paloma", "Gregorio")
variable_2 <- "Madrid"
variable_3 <- c(25, 30, 26)
lista <- list("progenitores" = variable_1,
              "lugar_nacimiento" = variable_2,
              "edades_hermanos" = variable_3)
lista
length(lista)
dim(lista) # devolverá NULL al no tener dos dimensiones
class(lista) # de tipo lista

# Accedemos por índice
lista[[1]]

# Accedemos por nombre
lista$progenitores

# Varios elementos
lista[1:2]

# otra lista
fecha_nacimiento <- as_date("1989-09-10") # fecha de nacimiento
notas <- data.frame("biología" = c(5, 7), "física" = c(4, 5),
                    "matemáticas" = c(8, 9.5))
row.names(notas) <- # Nombre a las filas
  c("primer_parcial", "segundo_parcial")
tlf <- c("914719567", "617920765", "716505013") # Números de teléfono
padres <- c("Juan", "Julia") # Nombres
# Guardamos TODO en una lista (con nombres de cada elemento)
datos <- list("nacimiento" = fecha_nacimiento,
              "notas_insti" = notas, "teléfonos" = tlf,
              "nombre_padres" = padres)
datos
datos[[1]]
datos$nacimiento
datos[[2]]
datos$notas_insti

# lista de listas
lista_de_listas <- list("lista_1" = datos[3:4], "lista_2" = datos[1:2])
names(lista_de_listas) # Nombres de los elementos del primer nivel
names(lista_de_listas[[1]]) # Nombres de los elementos guardados en el primer elemento, que es a su vez una lista
lista_de_listas[[1]][[1]] # Elemento 1 de la lista guardada como elemento 1 de la lista superior

    
# ----- 📝 Ejercicios -----

# Ejercicio 1: define una lista de 4 elementos de tipos
# distintos y accede al segundo de ellos (yo incluiré uno
# que sea un `data.frame` para que veas que en una lista cabe de todo).
# Ejemplo: lista con texto, numérico, lógico y un data.frame
lista_ejemplo <- list("nombre" = "Javier", "cp" = 28019,
                      "soltero" = TRUE,
                      "notas" = data.frame("mates" = c(7.5, 8, 9),
                                           "lengua" = c(10, 5, 6)))
lista_ejemplo

# Longitud
length(lista_ejemplo)

# Accedemos al elemento dos
lista_ejemplo[[2]]

# Ejercicio 2: accede a los elementos que ocupan los
# lugares 1 y 4 de la lista definida anteriormente.
# Accedemos al 1 y al 4
lista_ejemplo[c(1, 4)]

# Accedemos al 1 y al 4
lista_ejemplo$nombre
lista_ejemplo$notas
lista_ejemplo[c("nombre", "notas")]

# Ejercicio 3: define una lista de 4 elementos que
# contenga, en una sola variable, tu nombre, apellido,
# edad y si estás soltero/a.
# Creamos lista: con lubridate calculamos la diferencia de
# años desde la fecha de nuestro nacimiento hasta hoy (sea cuando sea hoy)
lista_personal <- list("nombre" = "Javier",
                       "apellidos" = "Álvarez Liébana",
                       "edad" = 32,
                       "soltero" = TRUE)
lista_personal

  
  