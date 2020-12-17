#Examen tercera unidad- Distribución binomial y Poisson

#Probabilidad de tener 4 o menos respuestas correctas:
k=4
n=12
dbinom(k, size=n, prob=0.2)

#Otra forma más sencilla de calcular la probabilidad
p=0.2
sum(dbinom(0:4, n, p))
#La probabilidad de tener las cuatro respuestas es baja, aunque sí podría suceder.


#La probabilidad de tener 2 o 3 respuestas correctas:
sum(dbinom(2:3, n, p))
#La probabilidad de que esto ocurra es media, tiene tanta posibilidad de suceder
#como de no suceder.

#Problema empresa Apple
kIp=1
nIp=25
pIp=0.005
dbinom(kIp, size=nIp, pIp)
#La probabilidad de encontrar un iPhone 11 defectuoso es muy baja.

#Probabilidad de que lleguen 35 alumnos en 15 minutos:
x=35
lamda=15
dpois(x,lamda)
#La probabilidad es muuuuuy baja.

#Probabilidad de que lleguen 50 alumnos en 15 minutos:
x2=50
lamda2=15
dpois(x2,lamda2)
#Es muuuuy poco posible que esto suceda, es una probabilidad casi nula.

#Probabilidad de que lleguen 34 alumnos en 5 minutos:
x3=34
lamda3=5
dpois(x3,lamda3)
#La probabilidad de que esto suceda es casi nula.

#Probabilidad de que lleguen 60 alumnos en 5 minutos:
x4=60
lamda4=5
dpois(x4,lamda4)
#La propabilidad es casi nula.

#Probabilidad de que lleguen 120 alumnos en 5 minutos:
x5=120
lamda5=5
dpois(x5,lamda5)
#La probabilidad es muy baja, casi nula.