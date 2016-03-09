Tipos de datos y estructuras en R
================
@jrcajide
9 de marzo de 2016

Tipos de datos básicos en R
---------------------------

``` r
"a"
2
2L
TRUE
1+4i
```

### Algunos funciones importantes

-   class() ¿De qué tipo es?
-   length() ¿Qué longitud tiene?
-   attributes() ¿Contiene metadatos?

**Ejemplo:**

``` r
x <- "Hola!"
class(x)
```

    ## [1] "character"

``` r
attributes(x)
```

    ## NULL

``` r
y <- 1:10
class(y)
```

    ## [1] "integer"

``` r
length(y)
```

    ## [1] 10

``` r
attributes(y)
```

    ## NULL

``` r
z <- c(1L, 2L, 3L)
class(z)
```

    ## [1] "integer"

Estructuras de datos
--------------------

### Vectores

``` r
x <- vector()
# con una longitud y un tipo
vector("character", length = 10)
```

    ##  [1] "" "" "" "" "" "" "" "" "" ""

``` r
character(5) 
```

    ## [1] "" "" "" "" ""

``` r
numeric(5)
```

    ## [1] 0 0 0 0 0

``` r
logical(5)
```

    ## [1] FALSE FALSE FALSE FALSE FALSE

#### Creación de vectores

``` r
x <- c(1, 2, 3)
x
```

    ## [1] 1 2 3

``` r
length(x)
```

    ## [1] 3

``` r
x1 <- c(1L, 2L, 3L)
y <- c(TRUE, TRUE, FALSE, FALSE)
z <- c("Oro", "Plata", "Bronce", "Cobre")
class(z)
```

    ## [1] "character"

``` r
z <- c(z, "Platino")
z
```

    ## [1] "Oro"     "Plata"   "Bronce"  "Cobre"   "Platino"

``` r
x <- c(0.5, 0.7)
x <- c(TRUE, FALSE)
x <- c("a", "b", "c", "d", "e")
x <- 9:100
x <- c(1 + (0+0i), 2 + (0+4i))

# usando secuencias

series <- 1:10
seq(10)
```

    ##  [1]  1  2  3  4  5  6  7  8  9 10

``` r
seq(1, 10, by = 0.1)
```

    ##  [1]  1.0  1.1  1.2  1.3  1.4  1.5  1.6  1.7  1.8  1.9  2.0  2.1  2.2  2.3
    ## [15]  2.4  2.5  2.6  2.7  2.8  2.9  3.0  3.1  3.2  3.3  3.4  3.5  3.6  3.7
    ## [29]  3.8  3.9  4.0  4.1  4.2  4.3  4.4  4.5  4.6  4.7  4.8  4.9  5.0  5.1
    ## [43]  5.2  5.3  5.4  5.5  5.6  5.7  5.8  5.9  6.0  6.1  6.2  6.3  6.4  6.5
    ## [57]  6.6  6.7  6.8  6.9  7.0  7.1  7.2  7.3  7.4  7.5  7.6  7.7  7.8  7.9
    ## [71]  8.0  8.1  8.2  8.3  8.4  8.5  8.6  8.7  8.8  8.9  9.0  9.1  9.2  9.3
    ## [85]  9.4  9.5  9.6  9.7  9.8  9.9 10.0

``` r
length(1:10)
```

    ## [1] 10

``` r
# ¿Qué ocurre si mezclamos tipos de datos?
# coercion
(xx <- c(1.7, "a"))
```

    ## [1] "1.7" "a"

``` r
(xx <- c(TRUE, 2))
```

    ## [1] 1 2

``` r
(xx <- c("a", TRUE))
```

    ## [1] "a"    "TRUE"

### Matrices

``` r
m <- matrix(nrow = 2, ncol = 2)
m
```

    ##      [,1] [,2]
    ## [1,]   NA   NA
    ## [2,]   NA   NA

``` r
dim(m)
```

    ## [1] 2 2

``` r
# Se rellenan por columnas
m <- matrix(1:6, nrow = 2, ncol = 3)
m
```

    ##      [,1] [,2] [,3]
    ## [1,]    1    3    5
    ## [2,]    2    4    6

``` r
# Otras formas de construir matrices
m <- 1:10
dim(m) <- c(2, 5)
m
```

    ##      [,1] [,2] [,3] [,4] [,5]
    ## [1,]    1    3    5    7    9
    ## [2,]    2    4    6    8   10

``` r
x <- 1:3
y <- 10:12
(cbind(x, y))
```

    ##      x  y
    ## [1,] 1 10
    ## [2,] 2 11
    ## [3,] 3 12

``` r
# ó
(rbind(x, y))
```

    ##   [,1] [,2] [,3]
    ## x    1    2    3
    ## y   10   11   12

``` r
# byrow nos permite especificar como rellanr la matriz
mdat <- matrix(c(1,2,3, 11,12,13), nrow = 2, ncol = 3, byrow = TRUE,
               dimnames = list(c("row1", "row2"),
                               c("C.1", "C.2", "C.3")))
mdat
```

    ##      C.1 C.2 C.3
    ## row1   1   2   3
    ## row2  11  12  13

### Listas

``` r
# Se crean con list()
x <- list(1, "a", TRUE, 1 + (0+4i))
x
```

    ## [[1]]
    ## [1] 1
    ## 
    ## [[2]]
    ## [1] "a"
    ## 
    ## [[3]]
    ## [1] TRUE
    ## 
    ## [[4]]
    ## [1] 1+4i

``` r
# Podemos transformar otros objetos a lista con as.list()

x <- 1:10
x <- as.list(x)
x
```

    ## [[1]]
    ## [1] 1
    ## 
    ## [[2]]
    ## [1] 2
    ## 
    ## [[3]]
    ## [1] 3
    ## 
    ## [[4]]
    ## [1] 4
    ## 
    ## [[5]]
    ## [1] 5
    ## 
    ## [[6]]
    ## [1] 6
    ## 
    ## [[7]]
    ## [1] 7
    ## 
    ## [[8]]
    ## [1] 8
    ## 
    ## [[9]]
    ## [1] 9
    ## 
    ## [[10]]
    ## [1] 10

``` r
length(x)
```

    ## [1] 10

**Ejemplo:**

``` r
xlist <- list(a = "Conjunto de datos iris", b = 1:10, data = head(iris))
xlist
```

    ## $a
    ## [1] "Conjunto de datos iris"
    ## 
    ## $b
    ##  [1]  1  2  3  4  5  6  7  8  9 10
    ## 
    ## $data
    ##   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
    ## 1          5.1         3.5          1.4         0.2  setosa
    ## 2          4.9         3.0          1.4         0.2  setosa
    ## 3          4.7         3.2          1.3         0.2  setosa
    ## 4          4.6         3.1          1.5         0.2  setosa
    ## 5          5.0         3.6          1.4         0.2  setosa
    ## 6          5.4         3.9          1.7         0.4  setosa

``` r
xlist$b
```

    ##  [1]  1  2  3  4  5  6  7  8  9 10

### Factores

``` r
sexo <- factor(c("masculino", "femenino", "femenino", "masculino"))
levels(sexo)
```

    ## [1] "femenino"  "masculino"

``` r
nlevels(sexo)
```

    ## [1] 2

``` r
# Orden de los factores
tallas <- factor(c("s", "xl", "m", "xl", "s", "m", "xl"))
levels(tallas)
```

    ## [1] "m"  "s"  "xl"

``` r
tallas <- factor(tallas, levels=c("s", "m", "xl"))
levels(tallas)
```

    ## [1] "s"  "m"  "xl"

**¿Podemos saber cuál es la talla más pequeña?**

``` r
min(tallas)
```

``` r
tallas <- factor(tallas, levels=c("s", "m", "xl"), ordered = TRUE)
levels(tallas)
```

    ## [1] "s"  "m"  "xl"

``` r
min(tallas) ## Ahora sí
```

    ## [1] s
    ## Levels: s < m < xl

**Muy útil: Tabla de contingencia**

``` r
table(tallas)
```

    ## tallas
    ##  s  m xl 
    ##  2  2  3

**Podemos convertir una variable categórica en texto:**

``` r
as.character(tallas)
```

    ## [1] "s"  "xl" "m"  "xl" "s"  "m"  "xl"

### Dataframes

``` r
df <- data.frame(id = letters[1:10], x = 1:10, y = rnorm(10))
df
```

    ##    id  x          y
    ## 1   a  1  1.3363668
    ## 2   b  2  1.1899281
    ## 3   c  3  1.9863411
    ## 4   d  4  0.4205674
    ## 5   e  5 -0.1595568
    ## 6   f  6 -0.6154064
    ## 7   g  7  0.1321257
    ## 8   h  8 -0.9793429
    ## 9   i  9  1.6114512
    ## 10  j 10 -0.9321383

``` r
# agregar nuevas variables
cbind(df, data.frame(z = 4))
```

    ##    id  x          y z
    ## 1   a  1  1.3363668 4
    ## 2   b  2  1.1899281 4
    ## 3   c  3  1.9863411 4
    ## 4   d  4  0.4205674 4
    ## 5   e  5 -0.1595568 4
    ## 6   f  6 -0.6154064 4
    ## 7   g  7  0.1321257 4
    ## 8   h  8 -0.9793429 4
    ## 9   i  9  1.6114512 4
    ## 10  j 10 -0.9321383 4

**Funciones útiles:**

``` r
head()
tail()
dim()
nrow()
ncol()
str()
names()
```

**Ejemplos:**

``` r
# Names: se aplican a vectores
x <- 1:3
names(x) <- c("a", "b", "c")
x
```

    ## a b c 
    ## 1 2 3

``` r
# a listas
x <- as.list(1:4)
names(x) <- letters[seq(along = x)]
x
```

    ## $a
    ## [1] 1
    ## 
    ## $b
    ## [1] 2
    ## 
    ## $c
    ## [1] 3
    ## 
    ## $d
    ## [1] 4

``` r
# a matrices con dimnames
m <- matrix(1:4, nrow = 2)
dimnames(m) <- list(c("a", "b"), c("c", "d")) # (filas, columnas)
m
```

    ##   c d
    ## a 1 3
    ## b 2 4

``` r
dimnames(m)
```

    ## [[1]]
    ## [1] "a" "b"
    ## 
    ## [[2]]
    ## [1] "c" "d"

``` r
colnames(m)
```

    ## [1] "c" "d"

``` r
rownames(m)
```

    ## [1] "a" "b"

### Missing values

``` r
x <- c(1, 2, NA, 4, 5)
x
```

    ## [1]  1  2 NA  4  5

``` r
is.na(x) 
```

    ## [1] FALSE FALSE  TRUE FALSE FALSE

Subset
------

### Sobre vectores

**Usando enteros positivos**

``` r
x <- c(5.4, 6.2, 7.1, 4.8)
x[1]
```

    ## [1] 5.4

``` r
x[c(3, 1)]
```

    ## [1] 7.1 5.4

``` r
x[1:3]
```

    ## [1] 5.4 6.2 7.1

``` r
x[c(1, 1)]
```

    ## [1] 5.4 5.4

**Usando enteros negativos**

``` r
x[-1]
```

    ## [1] 6.2 7.1 4.8

``` r
x[-c(1, 5)]
```

    ## [1] 6.2 7.1 4.8

**Usando valores lógicos**

``` r
x[c(TRUE, TRUE, FALSE, FALSE)]
```

    ## [1] 5.4 6.2

``` r
x[x > 6]
```

    ## [1] 6.2 7.1

``` r
x[which(x > 6)]
```

    ## [1] 6.2 7.1

``` r
x[which.max(x)]
```

    ## [1] 7.1

``` r
x[which.min(x)]
```

    ## [1] 4.8

**Referenciando objetos por sus nombres**

``` r
(y <- setNames(x, letters[1:4]))
```

    ##   a   b   c   d 
    ## 5.4 6.2 7.1 4.8

``` r
y[c("d", "c", "a")]
```

    ##   d   c   a 
    ## 4.8 7.1 5.4

``` r
y[c("a", "a", "a")]
```

    ##   a   a   a 
    ## 5.4 5.4 5.4

### Sobre listas

**Usando enteros**

``` r
x <- as.list(1:12)
x[1:5]
```

    ## [[1]]
    ## [1] 1
    ## 
    ## [[2]]
    ## [1] 2
    ## 
    ## [[3]]
    ## [1] 3
    ## 
    ## [[4]]
    ## [1] 4
    ## 
    ## [[5]]
    ## [1] 5

``` r
x[[5]]
```

    ## [1] 5

``` r
class(x[[5]])
```

    ## [1] "integer"

**Por su nombre**

``` r
names(x) <- month.name[1:length(x)] # Les damos un nombre
x
```

    ## $January
    ## [1] 1
    ## 
    ## $February
    ## [1] 2
    ## 
    ## $March
    ## [1] 3
    ## 
    ## $April
    ## [1] 4
    ## 
    ## $May
    ## [1] 5
    ## 
    ## $June
    ## [1] 6
    ## 
    ## $July
    ## [1] 7
    ## 
    ## $August
    ## [1] 8
    ## 
    ## $September
    ## [1] 9
    ## 
    ## $October
    ## [1] 10
    ## 
    ## $November
    ## [1] 11
    ## 
    ## $December
    ## [1] 12

``` r
x[["March"]]
```

    ## [1] 3

### De matrices

``` r
a <- matrix(1:9, nrow = 3)
colnames(a) <- c("A", "B", "C")
a
```

    ##      A B C
    ## [1,] 1 4 7
    ## [2,] 2 5 8
    ## [3,] 3 6 9

``` r
a[1:2, ]
```

    ##      A B C
    ## [1,] 1 4 7
    ## [2,] 2 5 8

``` r
a[c(T, F, T), c("B", "A")]
```

    ##      B A
    ## [1,] 4 1
    ## [2,] 6 3

``` r
a[0, -2]
```

    ##      A C

### De data frames

``` r
df <-
  data.frame(
    month = month.name[1:12],
    sesiones = round(rnorm(12, mean = 400, sd = 10), 2),
    transacciones = round(rnorm(12, mean = 20, sd = 4), 2)
  )
str(df)
```

    ## 'data.frame':    12 obs. of  3 variables:
    ##  $ month        : Factor w/ 12 levels "April","August",..: 5 4 8 1 9 7 6 2 12 11 ...
    ##  $ sesiones     : num  409 394 400 397 380 ...
    ##  $ transacciones: num  16.9 20.1 16.2 18 11.7 ...

``` r
df[df$sesiones < 400, ]
```

    ##        month sesiones transacciones
    ## 2   February   394.30         20.10
    ## 4      April   397.10         17.98
    ## 5        May   380.31         11.71
    ## 6       June   393.59         20.86
    ## 8     August   388.63         18.94
    ## 9  September   381.36         15.61
    ## 10   October   386.71         18.50
    ## 11  November   377.86         18.10
    ## 12  December   385.98         21.51

``` r
df[c(1, 3), ]
```

    ##     month sesiones transacciones
    ## 1 January   409.29         16.95
    ## 3   March   400.14         16.17

``` r
# Como en las listas
df[c("month", "transacciones")]
```

    ##        month transacciones
    ## 1    January         16.95
    ## 2   February         20.10
    ## 3      March         16.17
    ## 4      April         17.98
    ## 5        May         11.71
    ## 6       June         20.86
    ## 7       July         22.72
    ## 8     August         18.94
    ## 9  September         15.61
    ## 10   October         18.50
    ## 11  November         18.10
    ## 12  December         21.51

``` r
# Como en las matrices
df[, c("month", "transacciones")]
```

    ##        month transacciones
    ## 1    January         16.95
    ## 2   February         20.10
    ## 3      March         16.17
    ## 4      April         17.98
    ## 5        May         11.71
    ## 6       June         20.86
    ## 7       July         22.72
    ## 8     August         18.94
    ## 9  September         15.61
    ## 10   October         18.50
    ## 11  November         18.10
    ## 12  December         21.51
