# Lectura -----------------------------------------------------------------

getwd()  # Obtiene el directorio de trabajo actual
setwd("C:\\Users\\renro\\Desktop\\Base")  # Establece el directorio de trabajo
getwd()  # Confirma el cambio de directorio
data = read.csv("./CasoHuracanesCSV.csv")  # Lee el archivo CSV de datos de huracanes

# Limpieza de datos -------------------------------------------------------

# Elimina columnas redundantes y no necesarias para el análisis
datal <- data[, !(names(data) %in% c("Year", "Fecha", "Time", "Clave", "ID", "Latitude", "Longitud", "pressure"))]

# Asegura que los valores de presión y viento sean no negativos
datal <- datal[datal$Pressure >= 0, ]
datal <- datal[datal$Wind >= 0, ]
datal <- datal[datal$Ocean == "Atlantic", ]  # Filtra los datos del océano Atlántico
datal <- na.omit(datal)  # Elimina filas con valores NA

View(datal)  # Muestra los datos limpios en una vista de datos

# Analisis Estadistico ----------------------------------------------------

# Calcula el promedio de viento, presión y CO2
mean(datal$Wind)
mean(datal$Pressure)
mean(datal$CO2)

# Calcula la mediana de viento, presión y CO2
median(datal$Wind)
median(datal$Pressure)
median(datal$CO2)

# Calcula los cuartiles de viento, presión y CO2
datav <- c(datal$Wind, datal$Pressure, datal$CO2)
summary(datav)

# Analisis Grafico --------------------------------------------------------

# Gráficos de dispersión y de cajas, y otros gráficos para explorar los datos

# datos correlacion y kmeans ----------------------------------------------

# Calcula la matriz de correlación entre viento, presión y CO2
cor_matrix <- cor(datal[, c("Wind", "Pressure", "CO2")], use = "complete.obs")
corrplot(cor_matrix, method = "circle")  # Visualiza la matriz de correlación

# Aplica el algoritmo de k-means para agrupar los datos en clusters
scalec <- scale(datal[, c("Wind", "Pressure", "CO2")])
kmeans_result <- kmeans(scalec, 3)  # Agrupa los datos en 3 clusters
print(kmeans_result)  # Muestra los resultados de k-means
fviz_cluster(kmeans_result, data = scalec)  # Visualiza los clusters obtenidos

# Crear un gráfico de barras para mostrar el número de huracanes por mes y su estado
ggplot(data = datal, aes(x = Month, fill = Status)) +
  geom_bar(position = "dodge") +
  labs(title = "Estatus de Huracan por mes",
       x = "Mes",
       y = "numero de incidentes",
       fill = "Status") +
  theme_minimal()

#regresion

# Realiza análisis de regresión entre las variables Viento, Presión y CO2
dat <- data[data$Ocean == "Pacific" & data$Pressure >= 0 & data$Wind >= 0, ]  # Filtra datos del océano Pacífico
dat <- na.omit(dat)  # Elimina filas con valores NA
View(dat)

# Realiza regresiones lineales entre Viento y Presión, Viento y CO2, y Presión y CO2
lm_wind_pressure <- lm(Wind ~ Pressure, data = dat)
lm_wind_co2 <- lm(Wind ~ CO2, data = dat)
lm_pressure_co2 <- lm(Pressure ~ CO2, data = dat)

# Visualiza gráficos de regresión lineal entre las variables mencionadas
plot(dat$Pressure, dat$Wind, main = "Regresión lineal: Wind vs Pressure", xlab = "Pressure", ylab = "Wind")
abline(lm_wind_pressure, col = "red")
legend("topright", legend = "Regresión", col = "red", lwd = 1, bty = "n")

plot(dat$CO2, dat$Wind, main = "Regresión lineal: Wind vs CO2", xlab = "CO2", ylab = "Wind")
abline(lm_wind_co2, col = "blue")
legend("topright", legend = "Regresión", col = "blue", lwd = 1, bty = "n")

plot(dat$CO2, dat$Pressure, main = "Regresión lineal: Pressure vs CO2", xlab = "CO2", ylab = "Pressure")
abline(lm_pressure_co2, col = "green")
legend("topright", legend = "Regresión", col = "green", lwd = 1, bty = "n")
