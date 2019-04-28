#Zad1
ma1 = matrix(0:11, nrow = 3, ncol = 4)
ma2 = matrix(2, nrow = 3, ncol = 4)
ma3 = matrix(sample(1:3, 3), nrow = 3, ncol = 4)
#Zad2
ma1 + ma2
ma1 - ma2
ma1 * ma2
ma1 / ma2

ma1 + ma3
ma1 - ma3
ma1 * ma3
ma1 / ma3
#Zad3
ma1[1, 4]
#Zad4
ma3[ma3 > 2]
#Zad5
ma4 = cbind(ma1, ma3)
#Zad6
ra1 = data.frame(data = c(Sys.Date(), Sys.Date() - 1, Sys.Date() - 2),
                 miasto = c("Hajnówka", "Hajnówka", "Hajnówka"),
                 stringsAsFactors = FALSE)
#Zad7
ra2 = data.frame(t.min = c(5.3, 4.6, 2.9),
                 t.max = c(11.1, 14.6, 9), 
                 stringsAsFactors = FALSE)
#Zad8
ra3 = cbind(ra1, ra2)
ra4 = data.frame (tmean = ((ra3[,3] + ra3[,4])/2),
                  stringsAsFactors = FALSE)
ra3 = cbind(ra3, ra4)
#Zad9
colnames(ra3) = c("data" , "miasto" , "t.min" , "tmaks" , "tsr")
#Zad10
subset(ra3[,c(1,5)], tsr > 8)
#Zad11
li1 = list(c(10:1),
           ma4,
           ra3)
#Zad12
wektor_1 = li1[[1]]
#Zad13
mean(li1[[3]][["tsr"]])
#Zad14
as.matrix(ra1)
