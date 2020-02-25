# Anny sanchez de la cerda  
#Matricula :1811530
#29.01.2020


# Operadores basicos ------------------------------------------------------

2+2
a <- 2
a+5
a+a^2

log(a)

#Ingresar conjunto de datos

peso <- c(70,62,52,90,38,52,50,56,70,65,76,70,72)

peso
#numero de observaciones (length)

length(peso)

#Calcular la media del peso sumatoria de las observaciones
#y dividirlo entre el numero de individuos muestreados

sum(peso)/length(peso)
peso.media <- sum(peso)/length(peso)

mean(peso)
median(peso)

sd(peso)
var(peso)

fivenum(peso)

range(peso)

# Graficas ----------------------------------------------------------------


boxplot(peso)
boxplot ( peso, col = "blue" , ylab= "peso  (kg)", 
        main="peso alumnos tomado el 29.01.2020")
        
        
        


