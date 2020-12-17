#Examen

#X es una variable normalmente distribuida con una media de 30 y
#una desviación estándar de 4.

#Encontrar A
pnorm(2.5)
pnorm(40,mean=30, sd=4, lower.tail=TRUE)
#Ambos resultados coinciden: 0.9937903. 

#Encontrar B
pnorm(-2.25)
pnorm(21,mean=30, sd=4, lower.tail=TRUE)
#Ambos resultados coinciden: 0.01222447.

#Encontrar C
pnorm(0)
pnorm(1.25)
pnorm(35,mean=30, sd=4, lower.tail=TRUE) - pnorm(30,mean=30, sd=4, lower.tail=TRUE)
#Ambos resultados coinciden: 0.3943502.


#X es una variable normalmente distribuida con una media de 45 y una 
#desviación estándar de 2.

#Encontrar A
pnorm(15)
pnorm(75,mean=45, sd=2, lower.tail=TRUE)
#Ambos resultados coinciden: 1.

#Encontrar B
pnorm(-16)
pnorm(13,mean=45, sd=2, lower.tail=TRUE)
#Ambos resultados coinciden: 6.388754ee-58.

#Encontrar C
pnorm(7.5)
pnorm(18.5)
pnorm(60,mean=45, sd=2, lower.tail=TRUE) - pnorm(82,mean=45, sd=2, lower.tail=TRUE)
#Al hacerlo con el cálculo manual el resultado nos da 0, pero con la función arroja un resultado diferente.

#Ingreso universidad Timmy
n=1000
hist(rnorm(n,500,100),20, col="green")
abline(v=585, col=2)
pnorm(585,mean=500, sd=100)*(100)
#Timmy obtuvo una puntuación mejor que el 80.23% de los
#estudiantes que tomaron el examen y será admitido en esta
#universidad.

#Ingreso a la BENV
n=2600
hist(rnorm(n,1000,100),20, col="yellow")
abline(v=1185, col=2)
#Planteamiento del problema: P(X<1185)>90%?
pnorm(1185,mean=1000, sd=100)*(100)
#Al obtener 1185 puntos en mi examen de ingreso a la BENV, obtuve 
#una puntuación mejor que el 90% de los estudiantes que presentaron el examen
#por lo que es muy probable que sea admitida



#Prueba de hipótesis
set.seed(10)
x <- rnorm(100,10) # Creación de una variable aleatoria de media 10
Media <- 10
test <- t.test(x, mu=Media) # Comparación de la media muestral con la media
print(test)
#El p-valor es >0.05, no se rechaza Ho. Por lotanto, la muestra tiene media igual a 10.