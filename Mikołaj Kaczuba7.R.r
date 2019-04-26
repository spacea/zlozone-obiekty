#Zadanie1

  ma1 = matrix(0:11, nrow = 3, ncol = 4)

  ma2 = matrix(2, nrow = 3, ncol = 4)

  ma3 = matrix(sample(1:3), 1:3, nrow = 3, ncol = 4)
      
#Zadanie2

  ma1 + ma2

  ma1 - ma2

  ma1 * ma2

  ma1 / ma2
   
  ma1 + ma3

  ma1 - ma3

  ma1 * ma3

  ma1 / ma3
         
  
   #Podstawowe operacje wykonywane są w kolejności 
  #np: pierwsza liczba z ma1 plus pierwsza liczba z ma2 itd. (x1 + y1, x2 + y2...)

  
  
  
  #Zadanie3

  ma1[1,ncol(ma1) ]
  
#Zadanie4

  ma3[c(ma3 > 2)]


#Zadanie5
  
  ma4 = cbind(ma1, ma3)
  
#Zadanie6
  
  ra1 = data.frame(data = c("21-04-2019", "20-04-2019", "19-04-2019"),
                   miasto = c("Kutno"))
  ra1
  
#Zadanie7
  
  ra2 = data.frame( tmin = c(5.3, 4.6, 2.9),
                    tmax = c(11.1, 14.6, 9))
  ra2
  
#Zadanie8  
  
  ra3 = cbind(ra1, ra2)

     tmean = (ra3$tmin + ra3$tmax)/2
      
     as.data.frame(tmean)
  
     ra4 = cbind(ra3,tmean)
     
     ra4
     
#Zadanie9
  colnames(ra4)[5] = "tsr"     
  
  
#Zadanie10
  ra4$tmean > 8 
  
  
  
  
#Zadanie11
  
  li1 = list(c(10:1),
             ma4,ra4)
  li1           
#Zadanie12
  
  wektor_1 = li1[[1]]
  
  
#Zadanie13
  
  mean(li1[[3]]$tsr)
  
  
  #Zadanie14
  ra1_jako_macierz = as.matrix(ra1)
  ra1_jako_macierz
  
  
  
  
  
  
  
