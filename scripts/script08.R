# ----- Códigos del manual -----

# Cadena de texto
fecha_char <- "2021-04-21"
class(fecha_char)
fecha_char + 1 # error


# da error, ya que a un texto no le podemos sumar un número
# (no distingue entre dicha cadena de texto y, por ejemplo, `"oso panda"`).
# Por suerte contamos con el paquete `{lubridate}`, con diferentes
# funcionalidades para trabajar con fechas. 

# install.packages("lubridate")
library(lubridate)
# Fecha, mostrada como un texto pero guardada internamente como un número
fecha_date <- as_date(fecha_char)
class(fecha_date)
fecha_date + 1 # día siguiente
fecha_date - 3 # 3 días antes

#  `as_date()` tiene un argumento opcional, el formato en
# la que le estamos la fecha, que por defecto será
# `"yyyy-mm-dd"` (año en 4 cifras, guión, mes en dos
# cifras, guión, día en dos cifras. Si introducimos
# otro tipo de formato de fecha, debemos especificárselo
# en un segundo argumento `format = ...`, para `R` sepa el
# formato de fecha que le estamos pasando
as_date("10-03-2020", format = "%d-%m-%Y") # con día-mes-año (4 cifras)
as_date("10-03-20", format = "%d-%m-%y")  # con día-mes-año (2 cifras)
as_date("03-10-2020", format = "%m-%d-%Y") # con mes-día-año (4 cifras)
as_date("Octubre 21, 1995 21:24", format = "%B %d, %Y %H:%M") # fecha escrita


# Funciones de lubridate

ymd_hms("2017-11-28 14:02:00") # convertir a fecha una cadena año-mes-día + hora
ydm_hms("2017-22-12 10:00:00") # convertir a fecha una cadena año-día-mes + hora

dmy_hms("1 Jan 2017 23:59:59") # convertir a fecha una cadena textual de fecha + hora

mdy("July 4th, 2000") # convertir a fecha una cadena textual de fecha
ymd(20170131)

# hoy y ahora
hoy <- today()
class(hoy) # de clase fecha
hoy + 7 # dentro de una semana
now()

fecha <- now()
year(fecha)
month(fecha)
day(fecha)
hour(fecha)
minute(fecha)
second(fecha)
week(fecha) # Número de semana (del año)

wday(fecha)
wday(fecha, week_start = 1) # Día de la semana (empezando por el lunes)

# Además si usamos otro argumento opcional `label = TRUE`
# (por defecto está en `FALSE`), nos convertirá dichos días
# de la semana en los nombres (en lugar de números)
wday(fecha, week_start = 1, label = TRUE)

# Mantenemos la misma fecha que la actual pero solo cambiando el año
year(fecha) <- 1891

fecha_actual <- now()
fecha_actual > ymd(20170131) # Actual vs 2017-01-31
fecha_actual > ymd(21000131) # Actual vs 2100-01-31

# `leap_year()` podremos saber si la fecha corresponde a un año bisiesto
leap_year(as_date(ymd(20190131)))
leap_year(as_date(ymd(20160131)))

#  añadir intervalos de tiempo a una fecha dada (que no sean solo días).
fecha <- now()
fecha + weeks(0:3)
fecha + seconds(0:3)
                                                                                                                                                                    
    
# ----- 📝 Ejercicios -----

# Ejercicio 1: obten la fecha de hoy, define la fecha
# de tu cumpleaños, y calcula la diferencia de días.

# Hoy
hoy <- today()

# Cumple (diferentes formatos de entrada)
cumple <- as_date("1989-09-10") # por defecto
cumple <- as_date("10-09-1989", format = "%d-%m-%Y")

# Diferencia
hoy - cumple

# Ejercicio 2: define la fecha de tu cumpleaños y
# determina si fue año bisiesto. Súmale 1-2-3-4-5 semanas. 
cumple <- as_date("1989-09-10") # por defecto

# Bisiesto
leap_year(cumple)

# Sumamos semanaes
cumple + weeks(1:5)

# Ejercicio 3: extrae el mes, año y día de la semana
# de tu cumpleaños
# Mes
month(cumple)

# Año 
year(cumple)

# wday
wday(cumple, week_start = 1)
wday(cumple, week_start = 1, label = TRUE)

# Ejercicio 4: calcula los días que han pasado
# desde la fecha de tu nacimiento 
seconds(today() - cumple)

