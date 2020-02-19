#Ejercicio 1 


library(plyr)
accidentes <- c (0,1,0,2,2,1,4,3,0,1,5,1,2,3,4,0,1,1,3,4)
acc <- count(accidentes)
acc

# x freq
## 1 0   4
## 2 1   6
## 3 2   3
## 4 3   3
## 5 4   3
## 6 5   1

acc$rf <- acc$freq/sum(acc$freq)*100


barplot(acc$freq, names.arg = acc$x, main ="Accidentes en el aserradero", col = "lightgreen")