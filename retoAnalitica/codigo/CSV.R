# Autores -----------------------------------------------------------------
#A01749992 Roger Vicente Rendón Cuevas
#A01749680 Fabrizio Martínez Chávez


# Extraer Información -----------------------------------------------------

# Obtener el directorio de trabajo actual y Cambiar el directorio de trabajo a una ubicación específica
getwd()
setwd("D:/Documentos/TecWeek/SemanaTec/retoAnalitica/codigo/archive")

# Obtener el directorio de trabajo actual y leer archivo csv
getwd()
data = read.csv("./GlobalLandTemperaturesByCountry.csv")

# Eliminar filas con valores NA del marco de datos
data <- na.omit(data)


# Análisis general de información -----------------------------------------

# Crear un histograma de la columna AverageTemperature
hist(data$AverageTemperature, main = "Histogram de Average Temperature", xlab = "Average Temperature", col="blue")

# Crear un histograma de la columna AverageTemperatureUncertainty
hist(data$AverageTemperatureUncertainty, main = "Histogram of Average Temperature Uncertainty", xlab = "Average Temperature Uncertainty", col = "darkgreen")

# Imprimir un resumen
summary(data)


# Alemania ----------------------------------------------------------------

# Filtrar los datos para Alemania
gData <- subset(data, Country == "Germany")

# Crear un histograma de la columna AverageTemperature para Alemania
hist(gData$AverageTemperature, main = "Histograma de Average Temperature en Germany", xlab = "Average Temperature", col="yellow")

# Crear un histograma de la columna AverageTemperatureUncertainty para Alemania
hist(gData$AverageTemperatureUncertainty, main = "Histograma de Average Temperature Uncertainty en Germany", xlab = "Average Temperature Uncertainty", col="yellow")

# Imprimir un resumen del marco de datos para Alemania
summary(gData)


# Finlandia ---------------------------------------------------------------

# Filtrar los datos para Finlandia
fData <- subset(data, Country == "Finland")

# Crear un histograma de la columna AverageTemperature para Finlandia
hist(fData$AverageTemperature, main = "Histograma de Average Temperature en Finland", xlab = "Average Temperature", col="green")

# Crear un histograma de la columna AverageTemperatureUncertainty para Finlandia
hist(fData$AverageTemperatureUncertainty, main = "Histograma de Average Temperature Uncertainty en Finland", xlab = "Average Temperature Uncertainty", col = "green")

# Imprimir un resumen
summary(fData)


# Rumania -----------------------------------------------------------------

# Filtrar los datos para Rumania
rData <- subset(data, Country == "Romania")

# Crear un histograma de la columna AverageTemperature para Rumania
hist(rData$AverageTemperature, main = "Histograma de Average Temperature en Romania", xlab = "Average Temperature", col="red")

# Crear un histograma de la columna AverageTemperatureUncertainty para Rumania
hist(rData$AverageTemperatureUncertainty, main = "Histograma de Average Temperature Uncertainty en Romania", xlab = "Average Temperature Uncertainty", col = "red")

# Imprimir un resumen
summary(rData)