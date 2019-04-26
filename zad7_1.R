#Zadanie 1
ma1 = matrix(0:11, nrow = 3, ncol = 4)

ma2 = matrix(2, nrow = 3, ncol = 4)
?sample

x = c(1:3)
y = sample(x)
ma3 = matrix(y, nrow = 3, ncol = 4)


#Zadanie 2

ma1 + ma2
ma1 - ma2
ma1 * ma2
ma1 / ma2

ma1 + ma3
ma1 - ma3
ma1 * ma3
ma1 / ma3

#Dzia³ania s¹ wykonywane dla poszczególnych wierszy.

#Zadanie 3
ma1[1, ncol(ma1)]
#Zadanie 4
ma3[ ma3 > 2]

#Zadanie5
  ma4 = cbind( ma1, ma3)


#Zadanie6
  ra1 = data.frame(data = c(Sys.Date(), Sys.Date()-1, Sys.Date()-2),
                 miasto = c("Poznan"))
#Zadanie7
  ra2 = data.frame(tmin = c(5.3, 4.6, 2.9),
                 tmax = c(11.1, 14.6, 9))
#Zadanie8

  ra3 = cbind( ra1, ra2)
  tmean = c(ra3$tmin+ra3$tmax/2)
  ra3 = cbind(ra3, tmean)
  
#Zadanie 9
  colnames(ra3) = c("data","tmaks","tsr","tmax","tmean")
 
#Zadanie10
  ra3$tmean[tmean > 8]
 
 #Zadanie11
 
 li1 = list(c(10:0),
            ma4,
            ra3)
 
 #Zadanie12
 
 wektor_1 = li1[[1]]
 
 #Zadanie13
 
 mean(li1[[3]]$tsr)
 