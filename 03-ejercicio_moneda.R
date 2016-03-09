#### EJERCICIO
#### Calcular la longitud de una moneda de 1€ sabiendo que su diametro es 23.25 mm
#### Fórmula: longitud = pi * radio2 

radio <- ...
longitud <- ...
longitud




#### EJERCICIO
# Crea una función "longitud.moneda" a la que facilitándole un diámentro 
# calcule la longitud de la circunferencia de cualquier moneda 

longitud.moneda <- function () {
  #calcula el radio:
  radio <- 
    #calcula la longitud:
    longitud <- 
    return(longitud) 
}

#Comprueba que la función devuelve correctamente el resultado ejecutado
longitud.moneda(23.25)







#### EJERCICIO
# Vamos a crear una vector como el que sigue:
#             1 cent. 10 cent. 20 cent. 50 cent.   1 euro  2 euros
# diametros   16.2500  19.7500  22.2500  24.2500  23.2500  25.7500

# 1) Crea un vector monedas con los diámetros

diametros <- ...

# 2) Dale a cada elemento del vector el nombre de la moneda
# Crea una matriz 'monedas.mat' con los diámetros de varias monedas y calcula para todas ellas su longitud aplicando la función 'longitud.moneda' creada anteriormente a toda la matriz

names(diametros) <- ...

# 3) Crea un vector con las longitudes de cada moneda. Mira la ayuda de sapply

longitudes <- sapply(..., ...)

# Comprueba que es un vector
is.vector(longitudes)


# Dibuja un digrama de barras con las longitudes de cada moneda

...

# Crea, con las variables que tiene, una matriz monedas.mat como la siguiente:
#             1 cent. 10 cent. 20 cent. 50 cent.   1 euro  2 euros
# monedas     16.2500  19.7500  22.2500  24.2500  23.2500  25.7500
# longitudes 207.3942 306.3544 388.8212 461.8632 424.5568 520.7681

monedas.mat <- ...(..., ...)

# Comprueba que es una matriz
is.matrix(monedas.mat)


# 3) Convierta la matriz en un dataframe

monedas.df <- as.data.frame(...)

# Comprueba que es un dataframe
is.data.frame(monedas.df)

# 4) ¿Crees que exite correlación entre diámetro y longitud? ¿Puedes comprobarlo? 
# Previamente tendrás que trasponer el dataframe: monedas.df <- ...(monedas.df)
cor(..., ...)



