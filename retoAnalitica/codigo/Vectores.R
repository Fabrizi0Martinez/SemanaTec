# Roger Vicente Rendon Cuevas  A01749992
# Fabrizio Martínez Chávez     A01749680

# Crear un vector con el número de seguidores de cada miembro
seguidores <- c(327, 648, 436, 124, 651, 547, 235, 190, 182, 100, 325, 37, 519)

# Crear un histograma de los seguidores, ordenados de menor a mayor
hist(sort(seguidores),
     main="seguidores en instagram de los miembros del salon",
     xlab="numero de seguidores",
     ylab="frecuencia",
     col="darkblue",
     ylim = c(0, 4))

# Crear un boxplot de los seguidores, ordenados de menor a mayor
boxplot(sort(seguidores),
        main="seguidores en instagram de los miembros del salon",
        xlab="numero de seguidores",
        ylab="frecuencia",
        col="red")

# Crear un gráfico de puntos de los seguidores, ordenados de menor a mayor
plot(sort(seguidores),
     main="seguidores en instagram de los miembros del salon",
     xlab="numero de seguidores",
     ylab="frecuencia",
     col="darkgreen")

# Mostrar un resumen estadístico de los seguidores
summary(seguidores)

# Calcular y mostrar la suma total de seguidores
sum(seguidores)

# Calcular y mostrar el número total de miembros
length(seguidores)

# Calcular y mostrar el número mínimo de seguidores
min(seguidores)

# Calcular y mostrar el número máximo de seguidores
max(seguidores)

# Calcular y mostrar el número medio de seguidores
mean(seguidores)

# Calcular y mostrar la mediana del número de seguidores
median(seguidores)

# Calcular y mostrar la varianza del número de seguidores
var(seguidores)

# Calcular y mostrar la desviación estándar del número de seguidores
sd(seguidores)

# Calcular y mostrar el valor más frecuente de seguidores
# Nota: 'mfv' no es una función estándar en R. Necesitarías una biblioteca como 'modeest' para usarla.
mfv(seguidores)

