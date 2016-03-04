
# Data Types --------------------------------------------------------------

"a"
2
2L
TRUE
1+4i


class()  # what is it?
length()  # how long is it? What about two dimensional objects?
attributes()  # does it have any metadata?

# Ejemplo

x <- "dataset"
class(x)
attributes(x)

y <- 1:10
class(y)
length(y)
attributes(y)

z <- c(1L, 2L, 3L)
class(z)


# Data Structures ---------------------------------------------------------

# Vectors

x <- vector()
# with a length and type
vector("character", length = 10)
character(5) 
numeric(5)
logical(5)

x <- c(1, 2, 3)
x
length(x)

x1 <- c(1L, 2L, 3L)
y <- c(TRUE, TRUE, FALSE, FALSE)
z <- c("Alec", "Dan", "Rob", "Karthik")
class(z)

z <- c(z, "Annette")
z

x <- c(0.5, 0.7)
x <- c(TRUE, FALSE)
x <- c("a", "b", "c", "d", "e")
x <- 9:100
x <- c(1 + (0+0i), 2 + (0+4i))

# sequences

series <- 1:10
seq(10)
seq(1, 10, by = 0.1)

length(1:10)

nchar("Data Science")

# ¿Qué ocurre si mezclamos tipos de datos?
# coercion
(xx <- c(1.7, "a"))
(xx <- c(TRUE, 2))
(xx <- c("a", TRUE))


# Matrices

m <- matrix(nrow = 2, ncol = 2)
m

dim(m)

# Se rellenan por columnas
m <- matrix(1:6, nrow = 2, ncol = 3)
m

# Otras formas de construir matrices

m <- 1:10
dim(m) <- c(2, 5)

x <- 1:3
y <- 10:12
cbind(x, y)

# ó
rbind(x, y)

# byrow nos permite especificar como rellanr la matriz
mdat <- matrix(c(1,2,3, 11,12,13), nrow = 2, ncol = 3, byrow = TRUE,
               dimnames = list(c("row1", "row2"),
                               c("C.1", "C.2", "C.3")))
mdat


# Listas

# Se crean con list()
x <- list(1, "a", TRUE, 1 + (0+4i))
x

# Podemos transformar otros objetos a lista con as.list()

x <- 1:10
x <- as.list(x)
length(x)

# Un ejemplo
xlist <- list(a = "Karthik Ram", b = 1:10, data = head(iris))
xlist
xlist$b

# Factores
sex <- factor(c("male", "female", "female", "male"))
levels(sex)
nlevels(sex)

# Orden de los factores
food <- factor(c("low", "high", "medium", "high", "low", "medium", "high"))
levels(food)
food <- factor(food, levels=c("low", "medium", "high"))
levels(food)
min(food) ## doesn't work
food <- factor(food, levels=c("low", "medium", "high"), ordered=TRUE)
levels(food)
min(food) ## works!



table(food)

# Convertir factores

as.character(food)

f<-factor(c(3.4, 1.2, 5))
as.numeric(f) #No funciona como esperamos

f<-levels(f)[f]
f<-as.numeric(f) # Ahorá sí


# Data frame

df <- data.frame(id = letters[1:10], x = 1:10, y = rnorm(10))
df

cbind(df, data.frame(z = 4))

# Funciones útiles
head()
tail()
dim()
nrow()
ncol()
str()
names()

# Names: se aplican a vectores
x <- 1:3
names(x) <- c("karthik", "ram", "rocks")
x

# a listas
x <- as.list(1:10)
names(x) <- letters[seq(along = x)]
x

# a matrices con dimnames
m <- matrix(1:4, nrow = 2)
dimnames(m) <- list(c("a", "b"), c("c", "d")) # (filas, columnas)
m
dimnames(m)
colnames(m)
rownames(m)

# Missing values

x <- c(1, 2, NA, 4, 5)
x
is.na(x) 


# Subsetting atomic vectors -----------------------------------------------

# A) Using positive integers
x <- c(5.4, 6.2, 7.1, 4.8)
x[1]
x[c(3, 1)]
x[1:3]
x[c(1, 1)]


# B) Using negative integers
x[-1]
x[-c(1, 5)]

# C) Using logical operators
x[c(TRUE, TRUE, FALSE, FALSE)]
x[x > 6]
x[which(x > 6)]
x[which.max(x)]
x[which.min(x)]

# Referencing objects by their names
(y <- setNames(x, letters[1:4]))
y[c("d", "c", "a")]
y[c("a", "a", "a")]


# Subsetting lists --------------------------------------------------------

x <- as.list(1:12)
x[1:5]
x[[5]]
class(x[[5]])

# Por nombre
names(x) <- month.name[1:length(x)] # Les damos un nombre
x
x[["a"]]



# Subsetting matrices -----------------------------------------------------

a <- matrix(1:9, nrow = 3)
colnames(a) <- c("A", "B", "C")
a[1:2, ]
a[c(T, F, T), c("B", "A")]
a[0, -2]


# Subsetting data frames --------------------------------------------------

df <-
  data.frame(
    month = month.name[1:12],
    sesiones = round(rnorm(12, mean = 400, sd = 10), 2),
    transacciones = round(rnorm(12, mean = 20, sd = 4), 2)
  )

str(df)

df[df$sesiones < 400, ]
df[c(1, 3), ]

# Como en las listas
df[c("month", "transacciones")]

# Como en las matricez
df[, c("month", "transacciones")]



# Control Structures ------------------------------------------------------

# if, else, for, while, repeat, break, next, return


