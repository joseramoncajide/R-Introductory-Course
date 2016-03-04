Programación en R
================

Control Structures
------------------

### Hoy veremos

-   `if`,`else`,`for`,`while`,`repeat`,`break`,`next`,`return`

#### if, else

This is an R Markdown format used for publishing markdown documents to GitHub. When you click the **Knit** button all R code chunks are run and a markdown file (.md) suitable for publishing to GitHub is generated.

``` r
if (condition) {
    # do something
} else {
    # do something else
}
```

**Ejemplo:**

``` r
x <- 1:15
if (sample(x, 1) <= 10) {
    print("x is less than 10")
} else {
    print("x is greater than 10")
}
```

    ## [1] "x is greater than 10"

**El método de R:**

``` r
ifelse(x <= 10, "x less than 10", "x greater than 10")
```

    ##  [1] "x less than 10"    "x less than 10"    "x less than 10"   
    ##  [4] "x less than 10"    "x less than 10"    "x less than 10"   
    ##  [7] "x less than 10"    "x less than 10"    "x less than 10"   
    ## [10] "x less than 10"    "x greater than 10" "x greater than 10"
    ## [13] "x greater than 10" "x greater than 10" "x greater than 10"

#### for

``` r
for (i in 1:10) {
    print(i)
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
x <- c("apples", "oranges", "bananas", "strawberries")


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

``` r
# Sin llaves
for (i in seq(x))   print(x[i])
```

    ## [1] "apples"
    ## [1] "oranges"
    ## [1] "bananas"
    ## [1] "strawberries"

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

Functions If you have to repeat the same few lines of code more than once, then you really need to write a function. Functions are a fundamental building block of R. You use them all the time in R and it's not that much harder to string functions together (or write entirely new ones from scratch) to do more.

-   R functions are objects just like anything else.
-   By default, R function arguments are lazy - they're only evaluated if they're actually used:
-   Every call on a R object is almost always a function call.

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

sapply(vector, suma, 1)
```

    ## [1] 4 5 6 7

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

Let's start by defining a function `fahr_to_kelvin` that converts temperatures from Fahrenheit to Kelvin:

**Fahrenheit =&gt; Kelvin** `K = (F - 32) * 5/9 + 273.15`

``` r
fahr_to_kelvin <- function(temp) {
  kelvin <- ((temp - 32) * (5 / 9)) + 273.15
  return(kelvin)
}
# Temperatura a la que se congela el agua
fahr_to_kelvin(32) 
```

    ## [1] 273.15

``` r
# Temperatura a la que hierve
fahr_to_kelvin(212)
```

    ## [1] 373.15

**Kelvin =&gt; Celsius** `C = K - 273.15`

``` r
kelvin_to_celsius <- function(temp) {
  celsius <- temp - 273.15
  return(celsius)
}

#absolute zero in Celsius
kelvin_to_celsius(0)
```

    ## [1] -273.15

#### Vuestro reto: Convertir de Fahrenheit a Celsius sin conocer cual es su fórmula

**Fahrenheit =&gt; Celsius**

``` r
fahr_to_celsius <- function(temp) {
  temp_k <- fahr_to_kelvin(temp)
  result <- kelvin_to_celsius(temp_k)
  return(result)
}

# 
fahr_to_celsius(32.0)
```

    ## [1] 0

``` r
paste('El agua se congela a', fahr_to_celsius(32.0), 'grados centígrados y se congela a', fahr_to_celsius(212.0))
```

    ## [1] "El agua se congela a 0 grados centígrados y se congela a 100"
