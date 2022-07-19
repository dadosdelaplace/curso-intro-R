# ----- Códigos del manual -----

# Suma de números
1 + 2

# Suma que asignamos a una variable x
x <- 1 + 2

# Usamos dicho valor para calcular x - 3 y guardamos en y
y <- x - 3
x * y # multiplicación

# Algunas operaciones básicas
x^2
sqrt(x)
abs(x)
abs(y)

# Guardamos dos variables y realizamos la suma
a <- 1
b <- 2
a + b

# Error: a un texto (entre comillas no podemos sumar un número)
"a" + 1

# Warning: la raíz de -1 existe pero no es un número real
sqrt(-1)



# ----- 📝 Ejercicios -----

# Ejercicio 1: asigna ahora los valores `1`, `-2`, `3` a
# tres variables `a`, `b` y `c` distintas, y calcula la
# raíz cuadrada de cada uno
a <- 1
b <- -2
c <- 3

# Resultado
sqrt(a)
sqrt(b)
sqrt(c)

# Ejercicio 2: calcula en consola la suma de 3 más 4,
# y todo ello multiplicado por 10, y asígnalo a una
# variable `x` 
x <- (3 + 4) * 10
x

# Ejercicio 3: asigna un valor positivo a `x` y calcula
# su raíz cuadrada; asigna otro negativo y calcula su
# valor absoluto con la función `abs()` 
x <- 73 # por ejemplo
sqrt(x)

y <- -19 # por ejemplo
abs(y)

# Ejercicio 4: usando la variable `x` ya definida,
# completa el código inferior para guardar en una nueva
# variable `z` el resultado guardado en `x` menos 5 
z <- x - 5
z

# Ejercicio 5: usando las variables `x` e `y` ya definidas,
# calcula el máximo de ambas, y guárdalo en una nueva
# variable `t`.
t <- max(x, y)
t


