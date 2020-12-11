#Análisis de datos en escala Likert Examen Estela

install.packages("likert")
install.packages("ggplot2")
library(likert)
library(ggplot2)

#Para este ejercicio vamos a utilizar la matriz de datos
#de los resultados de la prueba PISA en 2009
#que se encuentra precargada en el paquete likert
#mediante el comando data
data("pisaitems")

#Le damos un nuevo nombre a la matriz de datos
#para su mejor uso
pisa<-pisaitems

#Exploramos la matriz de datos
names(pisa)
typeof(pisa)
str(pisa)


#visualizamos los valores que componen una variable
head(pisa$CNT)
head(pisa$ST24Q01)

#buscamos los valores perdidos
anyNA(pisa)
#numero total de datos perdidos en la matriz de datos
sum(is.na(pisa)) 
#eliminacion de filas con datos perdidos
#y creamos una nueva matriz
pisa2<-na.omit(pisa)
#verificamos que la nueva matriz no tenga valores perdidos
anyNA(pisa2)

head(pisa2)

#Empezamos a trabajar con nuestra nueva matriz de datos


#--------VARIABLE 36--------
#Agrupamiento de items
names(pisa2)
items36<-pisa2[,43:47] 
head(items36[1:4,1:4])

#Renombramos las etiquetas de respuesta
levels(items36)<-c("Nunca o casi nunca",
                   "En algunas lecciones",
                   "En la mayoria de las lecciones",
                   "En todas las lecciones")

#colocar los nombres a los indicadores

names(items36)<-c("Los estudiantes no escuchan lo que lxs maestrxs dicen",
                  "Hay ruido y desorden",
                  "Lxs maestrxs tienen que esperar un largo tiempo a que lxs alumnxs se tranquilicen",
                  "Lxs estudiantes no pueden trabajar bien",
                  "Lxs estudiantes no empiezan a trabajar durante mucho tiempo despues de que comienza la leccion")


l36<-likert(items36)

#Generamos el grafico de barras
plot(l36,type="bar",centered=FALSE)

#Grafico de barras con porcentajes
install.packages("plyr")
library(plyr)

plot(l36,type="bar",centered=TRUE, plot.percents=TRUE)


#Grafico de barras ordenado
plot(l36,group.order = colnames(items36))

#Grafico de densidad
likert.density.plot(l36,facet=TRUE,bw=0.5, 
                    legend = "Gráfico de densidad")

#gráfico de calor
plot(l36, type="heat")

