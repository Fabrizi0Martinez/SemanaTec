# Cargar las librerías necesarias
library(factoextra)
library(corrplot)
library(PerformanceAnalytics)

# Cargar los datos
data(mtcars)
print(mtcars)

# Escalar los datos
scalec <- scale(mtcars)

# Realizar la regresión lineal
regmtcars <- lm(mpg ~ cyl, data = mtcars)
summary(regmtcars)

# Crear el gráfico
plot(mtcars$cyl, mtcars$mpg, col="blue")
abline(regmtcars, col = "red")

# Realizar un análisis de correlación
correlation <- cor(scalec)

# Visualizar la matriz de correlación
corrplot(correlation, method ="ellipse")
print(correlation)


# Realizar un análisis de k-means
kmeans_result <- kmeans(scalec, 4)
print(kmeans_result)

# Visualizar los clusters con factoextra
fviz_cluster(kmeans_result, data = scalec)