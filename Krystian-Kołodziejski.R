#1
ma1 = matrix(0:11, nrow = 3, ncol = 4)
ma2 = matrix(2,nrow = 3, ncol = 4)
ma3 = matrix(sample(1:3), nrow = 3, ncol = 4)
ma3

#2
ma1+ma2
ma1-ma2
ma1*ma2
ma1/ma2

ma1+ma3
ma1-ma3
ma1*ma3
ma1/ma3
#macierze w R są zwektoryzowane

#3
ma1[1,ncol(ma1) ]

#4
ma3[ma3>2]

#5
ma4=cbind(ma1,ma3)
ma4

#6
ra1 = data.frame(data = c(Sys.Date(),Sys.Date()-1,Sys.Date()-2),
                 miasto = "poznań")

#7
ra2 = data.frame(tmin = c(5.3, 4.6, 2.9),
                 tmax = c(11.1, 14.6, 9))
ra2

#8
ra3 = cbind(ra1,ra2)
(ra3$tmin + ra3$tmax)/2

tmean = (ra3$tmin + ra3$tmax)/2
as.data.frame(tmean)
ra4 = cbind(ra3,tmean)
ra4

#9
colnames(ra4)[2] = "tmax"
colnames(ra4)[3] = "tsr"

ra4

#10
ra4$tmean > 8

#11

li1 = list(c(10:1),
           ma4,
           ra4)
li1           

#12
wektor_1 = li1[[1]]
wektor_1


#13
mean(li1[[3]]$tsr)

#14
ra1_matrix = as.matrix(ra1)
ra1_matrix
class(ra1_matrix)
#macierz i ramka danych są podobne do siebie i jest możliwość zamian klas bez dużej zmiany struktury.           


         
  
  
  
  

  
  
  

