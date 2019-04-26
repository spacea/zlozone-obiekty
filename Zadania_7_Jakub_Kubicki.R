  #Zadanie_1

ma1 = matrix(0:11, nrow = 3, ncol = 4)
ma2 = matrix(2,  nrow = 3, ncol = 4)
ma3 = matrix(sample(1:3),  nrow = 3, ncol = 4)

  #Zadanie_2

ma1 - ma2
ma1 + ma2
ma1 / ma2
ma1 * ma2

  ma1 - ma3
  ma1 + ma3
  ma1 / ma3
  ma1 * ma3

  #zadanie_3

ma1[c(1), c(4)]

  #zadanie_4

ma3>2


  #zadanie_5

ma4 = cbind(ma1, ma3)

  #zadanie_6

ra1 = data.frame(data = c(04.14, 04.15,04.16),
                 miasto = c("Poznan"))

  #zadanie_7

ra2 = data.frame(tmin = c(5.3, 4.6, 2.9),
                 tmax = c(11.1, 14.6, 9))

  #zadanie_8

ra3 = cbind(ra1, ra2)

tmean = (ra3$tmin + ra3$tmax) / 2

ra3 = cbind(ra3, tmean) 


  #zadanie_9

colnames(ra3) = c("data", "tmaks", "tsr", "tmax", "tmean")

  #zadanie_10


ra3[ra3$tmean > 8, c(1, 5)]

  #zadanie_11

li1 = list(c(10:0),
           ma4,
           ra3)

  #Zadanie12

wektor_1 = li1[[1]]

  #Zadanie13

mean(li1[[3]]$tsr)

  #Zadanie14

ramka1 = data.frame(wek_log = c(TRUE, FALSE, FALSE),
                    wek_cal = c(5L, -7L, 12L), 
                    wek_zmi = c(5.3, -7.1, 1.1), 
                    wek_zna = c("kot", "pies", "nosoro¿ec"),
                    stringsAsFactors = FALSE)
as.matrix(ramka1)

  #Efektem zmiany klasy jest dodanie nawiasow, czyli wartosci logiczne oraz 
  #liczbowe zmienily sie na tekst.