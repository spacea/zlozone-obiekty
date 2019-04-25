#Zadanie1

ma1 = matrix(0:11, nrow=3, ncol=4)
ma2 = matrix(rep(2, 12), nrow=3, ncol=4)
ma3 = matrix(sample(1:3), nrow=3, ncol=4)

#Zadanie2

ma1 + ma2
ma1 - ma2
ma1 * ma2
ma1 / ma2

ma1 + ma3
ma1 - ma3
ma1 * ma3
ma1 / ma3

#Macierze są obliczane w sposób a1 + b1, a2 + b2, czyli wartościami wierszy.
#Efektem tych działań są wyniki dodawania, odejmowania, mnożenia, dzielenia

#Zadanie3

ma1[c(1, 12)]

#Zadanie4

ma3[ma3 > 2]

#Zadanie5

ma4 = cbind(ma1, ma3)

#Zadanie6
?as.Date.numeric
ra1 = data.frame(data = as.Date(c('2019-04-18', '2019-04-17', '2019-04-16')),
                 miasto = 'Poznań',
                 stringsAsFactors = FALSE)

#Zadanie7

ra2 = data.frame(tmin = c(5.3, 4.6, 2.9),
                 tmax = c(11.1, 14.6, 9))
#Zadanie8

ra3 = cbind(ra1, ra2)
tmean = c(ra3$tmin+ra3$tmax/2)
ra3 = cbind(ra3, tmean)

#Zadanie9

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

#Zadanie14

ramka1 = data.frame(wek_log = c(TRUE, FALSE, FALSE),
                    wek_cal = c(5L, -7L, 12L), 
                    wek_zmi = c(5.3, -7.1, 1.1), 
                    wek_zna = c("kot", "pies", "nosorożec"),
                    stringsAsFactors = FALSE)
as.matrix(ramka1)
