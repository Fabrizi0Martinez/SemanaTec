# Autores -----------------------------------------------------------------
#A01749992 Roger Vicente Rendón Cuevas
#A01749680 Fabrizio Martínez Chávez

# Problema 1 --------------------------------------------------------------
#Programa que calcula la suma de 2 numeros

num1 <- 1
num2 <- 3
suma <- num1 + num2
sprintf("La suma de %d + %d es igual a: %d", num1, num2, suma)


# Problema 2 --------------------------------------------------------------
#Programa que calcula el área de un cuadrado dado el lado

l <- 5.2
areaCuadrado <-  l*l
sprintf("El área del cuadrado es: %f", areaCuadrado)


# Problema 3 --------------------------------------------------------------
#Programa que calcula el área de un triangulo dado su base y altura

b <- 4
h <- 3
areaTriangulo <- (b*h)/2
sprintf("El área del triangulo es: %f", areaTriangulo)


# Problema 4 --------------------------------------------------------------
#Programa que saca el area de un circulo dado su radio

radio <- 2
area <- pi * radio^2
sprintf("El area de un circulo con radio %f es : %f", radio, area)


# Problema 5 --------------------------------------------------------------
#Programa que calcula el volúmen de un cono recto dado su radio y altura

r <- 5
h <- 6
volCono <- (pi*(r*r)*h)/3
sprintf("El volúmen del cono recto es: %f", volCono)

# Problema 6 --------------------------------------------------------------
#Programa recibe cantidad en pesos y saca equivalencia en dolares

pesos <- 100
dolares <- 100/20
sprintf("La conversión de %d pesos a dólares es de: %f", pesos, dolares)


# Problema 7 --------------------------------------------------------------
#Programa que lee una temperatura en farenheit y da la equivalencia en grados Celsius

farenheit <- 100
celsius <- (5/9) * (farenheit - 32)
sprintf("La equivalencia de %f grados Fahrenheit a grados Celsius es: %f", farenheit, celsius)
