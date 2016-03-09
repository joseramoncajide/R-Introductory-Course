#############################################################################
# R
# @jrcajide, 2016-03-09
#
# Introducción a R
# 
#############################################################################


## Workspace 

### Directorio de trabajo
getwd()
dir <- "/" 
dir <- "~/Documents/GitHub/R-Introductory-Course/"
dir
setwd(dir)
getwd()

### Entorno
x <- 10
y <- 20
x + y
ls()  
rm(y)
y
ls()
rm(list = ls())

### Funciones

sqrt()
?sqrt
help(sqrt)
??sqrt
example(sqrt)
sqrt(12)


## Operaciones básicas
x <- 10
y <- 8
z <- -3

x + y + z
x - y
x*y
x^3

pi
round(pi, 0)
round(pi, 4)
floor(pi)
cos(pi) #sin #tan
abs(cos(pi))
log(x)
log10(x)

exp(1)
factorial(4)
1*2*3*4



# Vectores
x <- 15
vec <- c(1,2,3,4,5)
class(vec)
str(vec)
1:5
vec2 <- 10:14
vec2
vec2[1]
vec2[1:3]
length(vec2)

vec2 + vec
vec2 - vec
3*vec2
sqrt(vec2)

char_vec <- c("Hola", "Mundo")

hummm <- c("Hola", 10) #coerce
hummm

## Sequencias
seq(1:10)
seq(1,10)
seq(from=1, to=10, by=.5)
rep(1:5, 2)

## Funciones estadísticas básicas
x_vec <- c(1,2,4,5,6,3,9,5)

sum(x_vec)
min(x_vec)
max(x_vec)
range(x_vec)

mean(x_vec)
median(x_vec)

#Medidas de disperión

#Varianza: esperanza del cuadrado de la desviación de dicha variable respecto a su media
var(x_vec)

#Desviación estándar: Se define como la raíz cuadrada de la varianza de la variable
sqrt(var(x_vec))
sd(x_vec)

#Correlación: indica la fuerza y la dirección de una relación lineal y proporcionalidad entre dos variables estadísticas. 
cor(x_vec, x_vec)

y_vec <- c(2,4,6,5,5,4,5,8)

cor(x_vec, y_vec)

## MATRICES

a.mat <- matrix(c(30,32,31,27,36,72,60,78,67,71,55,57,56,55,49),ncol = 3)
colnames(a.mat) <- c("Fairbanks","San Francisco","Chicago")
rownames(a.mat) <- paste("3/",12:16,sep = '')

b.mat <- matrix(c(88,85,83,81,78,62,61,54,60,65,90,92,91,89,90),ncol=3)
colnames(b.mat) <- c("Los Angeles","Seattle","Honolulu")
rownames(b.mat) <- paste("3/",12:16,sep='')

ciudades.mat <- cbind(a.mat, b.mat)



#Un adelanto: ¿cuáles son las temperaturas que se repiten con más frequencia?
hist(ciudades.mat)

rowMeans(ciudades.mat)
colMeans(ciudades.mat)
#Un adelanto
boxplot(ciudades.mat)

#Cuál es la ciudad con mayores diferencias de temperatura
?apply
apply(ciudades.mat, 2, FUN=sd)

#Un adelanto
barplot(apply(ciudades.mat, 2, FUN=sd))

#Existe correlación entre algunos países
cor(ciudades.mat)

heatmap(cor(ciudades.mat))

library(corrgram)
corrgram(ciudades.mat)
corrgram(ciudades.mat, upper.panel=NULL)

summary(ciudades.mat)

summary(t(ciudades.mat))








## STRINGS

saludo<-"Hola"
saludos<-c("Hola","Hello","Hey")
nombre<-"Mundo"

paste(saludo, nombre)
paste0(saludo, nombre)
paste(saludo, nombre, sep = ', ')
paste(saludo,', ', nombre, '!', sep="")

url <- '/es-es/miamix-c512835000'
idioma <- substr(url, 2,6)
idioma
nchar(url)

#### Aplicación: Obtener el id de producto de la anterior url
id_producto <- substr(url, nchar(url)-9, nchar(url))

urls <- c('/es-es/miamix-c512835000','/es-es/beach-c342891010')

ids_producto <- substr(urls, nchar(urls)-9, nchar(urls))
ids_producto[1]
ids_producto[2]


## BASIC PLOTING

library('MASS')
data("Cars93")
Cars93
head(Cars93)
ncol(Cars93)
attach(Cars93)
plot(x=Price, y=Weight)
plot(x=Weight, y=MPG.city)
abline(lm(MPG.city~Weight), col = "red")
abline(h = max(MPG.city), col = "red")
abline(v = max(Weight), col = "red")

dotchart(MPG.city)
dotchart(MPG.city, labels=paste(Manufacturer,Model))
dotchart(MPG.city, labels=paste(Manufacturer,Model), cex=.5)

orderedCars <- Cars93[order(MPG.city),]
attach(orderedCars)
dotchart(MPG.city, labels=paste(Manufacturer,Model), cex=.5)

#Más de un gráfico
par(mfrow=c(2,1))
plot(x=Weight, y=MPG.city)
plot(x=Weight, y=Price)

#Ejecutar para dejar la configuración inicial:
par(mfrow=c(1,1))


