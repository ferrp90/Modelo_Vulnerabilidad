library(dplyr)
library(ggplot2)
install.packages("readxl")
library(readxl)
datos <- read_excel("Vulnerabilidades.xlsx")
head(datos)
str(datos)
summary(datos)

datos %>%
  group_by(Vulnerabilidad) %>%  
  summarise(
    n = n(),
    media_edad = mean(EDAD, na.rm = TRUE),
    mediana_edad = median(EDAD, na.rm = TRUE),
    sd_edad = sd(EDAD, na.rm = TRUE),
    min_edad = min(EDAD, na.rm = TRUE),
    max_edad = max(EDAD, na.rm = TRUE)
  )
  
datos$Vulnerabilidad <- factor(datos$Vulnerabilidad,
                               levels = c("Alta", "Media", "Baja"))


ggplot(datos, aes(x = EDAD, fill = Vulnerabilidad)) + 
  geom_histogram(alpha = 0.6, position = "identity", bins = 20) +
  labs(title = "Distribución de edades por nivel de vulnerabilidad",
       x = "Edad", y = "Frecuencia") +
  theme_minimal()
  
# Comparación de proporciones por sexo
ggplot(datos, aes(x = Vulnerabilidad, fill = SEXO)) +
  geom_bar(position = "fill") +
  scale_y_continuous(labels = scales::percent) +
  labs(title = "Proporción de sexo por nivel de vulnerabilidad",
       x = "Nivel de vulnerabilidad", y = "Proporción") +
  theme_minimal()
  
  
