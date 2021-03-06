#Ejercicio 1 


library(plyr)
accidentes <- c (0,1,0,2,2,1,4,3,0,1,5,1,2,3,4,0,1,1,3,4)
acc <- count(accidentes)
acc




# Construir un barplot con la frecuencia de accidentes. -------------------





acc$rf <- acc$freq/sum(acc$freq)*100



barplot(acc$freq, names.arg = acc$x, xlab = "# Accidentes", 
        ylab = "meses", col = "lightgreen")

mean(accidentes)
sum(accidentes)
boxplot(accidentes)



# Ejercicio 2 -----------------------------------------------------------

especies <- c("F", "H", "F", "C", "F", "A", "H", "F", 
              "H", "C", "A", "C","F", "H", "H", "H", 
              "F", "H", "A", "C", "F", "H", "H", "F")


library(plyr)
acc <- count(especies)
acc



# ¿Qué especie presenta mayor proporción (Anote su%)? 




# Ejercicio 3 -------------------------------------------------------------

library(repmis)
## Registered S3 method overwritten by 'R.oo':
##   method         from 
##   throw.default R.methodsS3


conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")

## Downloading data from: https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1

## SHA-1 hash of the downloaded data file is: ## 2bdde4663f51aa4198b04a248715d0d93498e7ba



## Vecinos Cedro Douglas-ﬁr  Hemlock  Total 
#0 
#1 
#2 
#3 
#4
#5 
#6



# Ejercicio 4 -------------------------------------------------------------


dbh <- conjunto$Diametro
range(dbh)

Intervalo <- seq(7.5, 25.5, by=5)
Intervalo


dbh.table <- cut(dbh, Intervalo)
table(dbh.table)



dbh.prop <- cbind(table(dbh.table))
dbh.per <- round(prop.table(dbh.prop)*100,2)

Intervalo <- seq(7.5, 25.5, by=5)
Intervalo

# Intervalo F. absoluta F. relativa (%) 
# 7.5-12.5
#12.5-17.5 
#17.5-22.5


# Ejercicio 5 -------------------------------------------------------------

# seq(7.5, 25.5, by=2.5).

## [1] 7.5 10.0 12.5 15.0 17.5 20.0 22.5 25.0


par(mfrow=c(1,2)) 
hist(conjunto$Diametro, main = "Sin modificar", xlab="Diámetro") 
hist(conjunto$Diametro, breaks = inter, main = "Datos Intervalos") 
par(mfrow=c(1,1))












