
#1.-Leer la matriz de datos
  cars<-data(mtcars)

  #TIP: con el comando names(nombre_de_la_matriz) puedes
  #visualizar el nombre de las-
  #variables que contiene la matriz de datos.
  names(mtcars)

  #dimension de la matriz (cuantas observaciones y 
  #variables contiene)
  dim(mtcars)
#tipo de variable
  str(mtcars)

  #detecta si hay valores peridos
  anyNA(mtcars)

  #Visualizamos la variable carb de la matriz mtcars
  mtcars$carb

  #2.- Revisamos el tipo de matriz de datos
  #Vector -> función c()
  #Lista
  #Matriz
  #factor
  #Data frame (tabla que contiene datos de tipo numéricos,
  #factor y caracter)
  typeof(mtcars)

  #3.- Convertimos la matriz de datos a un data frame y despues
  #Agrupamos los valores para la variable carb
  # y se calcula la frecuencia absoluta.
  tabla_PL<-as.data.frame(table(PL = mtcars$carb))

  #4.- Mostramos la tabla de contingencia para la variable PL
  #con su respectiva frecuencia absoluta.
  tabla_PL

  #5.- Se construye la tabla de frecuencias completas redondeando
  #las frecuencias absolutas a 3 decimales
  transform(tabla_PL,
            freqAc=cumsum(Freq),
            Rel= round(prop.table(Freq),3),
            RelAc=round(cumsum(prop.table(Freq)),3))

  #6.- agruparemos las variables en 10 clases y se 
  #calcula la frecuencia absoluta
  
  tabla_clases<-as.data.frame(table
                              (carb = factor
                                (cut(mtcars$carb,
                                     breaks = 9))))

  #7.- visualizamos la tabla de clases
  tabla_clases

  #8.- Construcción de la tabla de frecuencias completa redondeando las frecuencias
  #relativas a 3 decimales
  transform(tabla_clases,
            freqAc=cumsum(Freq),
            Rel= round(prop.table(Freq),3),
            RelAc=round(cumsum(prop.table(Freq)),3))
  