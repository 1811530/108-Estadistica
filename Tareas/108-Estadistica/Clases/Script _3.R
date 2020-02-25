



# Normalidad --------------------------------------------------------------






head(conjunto)



# Aplicar prueba de Shapiro.test para la variable Altura

hist(conjunto$Diametro)
shapiro.test(conjunto$Altura)


frecu <-table(conjunto$Clase)
prop.table(frecu)
frecu

boxplot(conjunto$Diametro~ conjunto$Especie, col="pink")
# prueba homogeneidad} ----------------------------------------------------



var(conjunto$Diametro)
var(conjunto$Altura)



# Datos ebano -------------------------------------------------------------

ebanos <-read.csv("Clases/ebanos", header = T)

hist(ebanos$diametro)
hist(ebanos$altura)

boxplot(ebanos$diametro)
fivenum(ebanos$diametro)

# ¿Cuantos individuos tienen un Diam menor al 1er quiartil? ---------------

sum(ebanos$diametro <= 15.75)


# ¿Cuantos individuos tienen un Diam menor al 3er quiartil? ---------------


sum(ebanos$diametro <= 34.25)


# ¿Cuantos individuos tienen un Diam mayor al 1er quiartil 
#pero menor o igual a el 2do quartil? ---------------

sum(ebanos$diametro >=15.55  & ebanos$diametro <=25.90)

sum(ebanos$diametro <= 25.9)


# ¿Cuantos individuos tienen un Diam mayor al 2do quiartil 
#pero menor o igual a el 3er quartil? ---------------

sum(ebanos$diametro >=10  & ebanos$diametro  <=15.55)




ks.test(conjunto$Diametro, "pnorm", 
        mean=mean(conjunto$Diametro,
                        sd=sd(conjunto$Diametro)))

hist(conjunto$Diametro)


