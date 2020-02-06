library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayx6m3/cuadro1.cvs?dl=1")

área
ts.dug.h <- subset(conjunto, conjunto$Especie == "H")
ts.dug.f <- subset(conjunto, conjunto$Especie == "F")


ts.dug.hf <- subset(conjunto, conjunto$Especie == "H" | conjunto$Especie == "F")
HyF <-rbind(ts.dug.h, ts.dug.f)



# 3 graficas --------------------------------------------------------------

par (mfrow=c(2,2))
hits(ts.dug.h$altura, main = "Altur especie H", 
     col=green , xlab="alturas" , ylab =frecuencia
hist(ts.dug.f$altura, main = "Altura especie F"),col=green
hits(ts.dug.h$diametro)
hist(ts.dug.f$diametro)
par (mfrow=c (1,1))

