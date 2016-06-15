Programación en R
================
@jrcajide

Estructuras de control
----------------------

-   `if`,`else`,`for`,`while`,`repeat`,`break`,`next`,`return`

#### if, else

``` r
if (condition) {
    # haz algo
} else {
    # haz otra cosa
}
```

**Ejemplo:**

``` r
x <- 1:15
if (sample(x, 1) <= 10) {
    print("x es menor que 10")
} else {
    print("x es mayor que 10")
}
```

    ## [1] "x es menor que 10"

**El método de R:**

``` r
ifelse(x <= 10, "x es menor que 10", "x es mayor que 10")
```

    ##  [1] "x es menor que 10" "x es menor que 10" "x es menor que 10"
    ##  [4] "x es menor que 10" "x es menor que 10" "x es menor que 10"
    ##  [7] "x es menor que 10" "x es menor que 10" "x es menor que 10"
    ## [10] "x es menor que 10" "x es mayor que 10" "x es mayor que 10"
    ## [13] "x es mayor que 10" "x es mayor que 10" "x es mayor que 10"

#### for

``` r
for (indice in 1:10) {
    print(indice)
}
```

    ## [1] 1
    ## [1] 2
    ## [1] 3
    ## [1] 4
    ## [1] 5
    ## [1] 6
    ## [1] 7
    ## [1] 8
    ## [1] 9
    ## [1] 10

**Ejemplos:**

``` r
x <- c("apples", "oranges", "bananas", "strawberries", 'hola')


for (i in 1:4) {
    print(x[i])
}
```

    ## [1] "apples"
    ## [1] "oranges"
    ## [1] "bananas"
    ## [1] "strawberries"

``` r
for (i in seq(x)) {
    print(x[i])
}
```

    ## [1] "apples"
    ## [1] "oranges"
    ## [1] "bananas"
    ## [1] "strawberries"
    ## [1] "hola"

``` r
# Sin llaves
for (i in seq(x))   print(x[i])
```

    ## [1] "apples"
    ## [1] "oranges"
    ## [1] "bananas"
    ## [1] "strawberries"
    ## [1] "hola"

#### loops

**Ejemplos:**

``` r
m <- matrix(1:10, 2)
# m:
m
```

    ##      [,1] [,2] [,3] [,4] [,5]
    ## [1,]    1    3    5    7    9
    ## [2,]    2    4    6    8   10

``` r
for (i in seq(nrow(m))) {
    for (j in seq(ncol(m))) {
        print(m[i, j])
    }
}
```

    ## [1] 1
    ## [1] 3
    ## [1] 5
    ## [1] 7
    ## [1] 9
    ## [1] 2
    ## [1] 4
    ## [1] 6
    ## [1] 8
    ## [1] 10

#### while

**Ejemplo:**

``` r
i <- 1
while (i < 10) {
    print(i)
    i <- i + 1
}
```

    ## [1] 1
    ## [1] 2
    ## [1] 3
    ## [1] 4
    ## [1] 5
    ## [1] 6
    ## [1] 7
    ## [1] 8
    ## [1] 9

Asegúrate siempre de que hay una salida dentro de un while

#### repeat y break

**Ejemplo:**

``` r
repeat {
    # simulations; generate some value have an expectation if within some range,
    # then exit the loop
    if ((value - expectation) <= threshold) {
        break
    }
}
```

#### next

**Ejemplo:** `%%`: División de enteros

``` r
for (i in 1:20) {
    if (i%%2 == 1) {
        next
    } else {
        print(i)
    }
}
```

    ## [1] 2
    ## [1] 4
    ## [1] 6
    ## [1] 8
    ## [1] 10
    ## [1] 12
    ## [1] 14
    ## [1] 16
    ## [1] 18
    ## [1] 20

Veremos otras funciones que nos permitirán evitir el uso de este tipo de estructuras, generalmente poco efecientes en término de redmiento.

------------------------------------------------------------------------

Funciones
---------

Si tienes que repetir los mismo más de dos veces, crea una función

-   Las funciones en R son también objetos

### Una función

``` r
suma <- function(x, y) {
    z <- x + y
    return(z)
}
suma(2,8)
```

    ## [1] 10

**Aplicación:**

``` r
vector <- c(3, 4, 5, 6)

sapply(vector, suma, 2)
```

    ## [1] 5 6 7 8

**¿Qué devuelve la siguiente función?**

``` r
x <- 5
f <- function() {
    y <- 10
    c(x = x, y = y)
}
f()
```

**¿y esta??**

``` r
x <- 5
g <- function() {
    x <- 20
    y <- 10
    c(x = x, y = y)
}
g()
```

#### Funciones con valores predefinidos

``` r
temp <- function(a = 1, b = 2) {
    return(a + b)
}
temp()
```

    ## [1] 3

``` r
temp(4,6)
```

    ## [1] 10

### Vamos a programar funciones.

**Fahrenheit =&gt; Kelvin** `K = (F - 32) * 5/9 + 273.15`

``` r
fahr_to_kelvin <- function(F) {
  kelvin <- (F - 32) * 5/9 + 273.15
  return(kelvin)
}
# Temperatura a la que se congela el agua
fahr_to_kelvin(32) 
# Temperatura a la que hierve
fahr_to_kelvin(212)
```

**Kelvin =&gt; Celsius** `C = K - 273.15`

``` r
kelvin_to_celsius <- function(K) {
  celsius <- K - 273.15
  return(celsius)
}

#cero
kelvin_to_celsius(0)
```

#### Vuestro reto: Convertir de Fahrenheit a Celsius sin conocer cual es su fórmula

**Fahrenheit =&gt; Celsius**

``` r
fahr_to_celsius <- function(temperatura) {
  temp_k <- fahr_to_kelvin(temperatura)
  result <- kelvin_to_celsius(temp_k)
  return(result)
}

# 
fahr_to_celsius(32.0)
paste('El agua se congela a', fahr_to_celsius(32.0), 'grados centígrados y hierve a', fahr_to_celsius(212.0))
```
