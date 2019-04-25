#Zadanie 1
ma1 = matrix(0:11, nrow = 3, ncol = 4)
ma2 = matrix(2, nrow = 3, ncol = 4) 
ma3 = matrix(1:3, nrow = 3, ncol = 4)
ma1
ma2
ma3
#Zadanie 2

ma1+ma2
ma1-ma2
ma1*ma2
ma1/ma2

ma1+ma3
ma1-ma3
ma1*ma3
ma1/ma3

#Zadanie 3

ma1[c(1),]
ma1[,c(4)]

#Zadanie 4

wydzielenia_war_wiek_2 = ma3[ma3 > 2]
  wydzielenia_war_wiek_2
#Zadanie 5
ma4 = cbind(ma1,ma3)
ma4
#Zadanie 6
ra1 = data.frame(data = c("24.04.2019","25.04.2019","26.04.2019"),
                 miasto = c("poznan","poznan","poznan"))
ra1                 
#Zadanie 7
ra2 = data.frame(tmin = c(5.3, 4.6, 2.9),
                 tmax = c(11.1, 14.6,9.0))
ra2

#Zadanie 8
ra3 = cbind(ra1,ra2)
ra3
  ra2
  ratemp1 = ra2[c(1),]
  ratemp1
  
       temp1 = (5.3+11.1) / 2
       temp1
  #nie moglem wpasc na inny pomysl wiec taki prymitywny dalem, probowalem z apply i z mean ale cos mi nie wychodzilo
  
  
  ratemp2 = ra2[c(2),]
  ratemp2
       temp2 = (2.9+9) / 2
       temp2
  ratemp3 = ra2[c(3),]
  ratemp3
       temp3 = (4.6+14.6) / 2
       temp3
tmean  = data.frame(tmean = c(9.6,5.95,9.6))
tmean

ratemp = cbind(ra3,tmean)
ratemp
#Zadanie 9
  
  ratemp
tsr =  data.frame(tsr = c(9.6,5.95,9.6))
tsr

ra4 = cbind(ra3,tsr)
ra4
#Zadanie 10
wieksze_od_8 = ra4[ra4$tsr > 8, ]
wieksze_od_8
#Zadanie 11

lis1 = list(c(1:10),
            ma4,
            ratemp)
lis1
#Zadanie 12
wektor_1 = lis1[[1]]
wektor_1
#Zadanie 13
lista3 = lis1[[3]]
lista3 
tsr = lista3$tmean
tsr
srednia = mean(tsr)
srednia
#Zadanie 14
ramka1 = data.frame(wek_log = c(TRUE, FALSE, FALSE),
                    wek_cal = c(5L, -7L, 12L), 
                    wek_zmi = c(5.3, -7.1, 1.1), 
                    wek_zna = c("kot", "pies", "nosorozec"),
                    stringsAsFactors = FALSE)
ramka1 
codostalismy = matrix(ramka1)
codostalismy
#otrzymalismy informacje o tym, ze pierwszy wiersz jest logical, 2 integer, 3 numeric, 4 character, zmieni³a nam siê ilosc kolumn i dostalismy po przecinku wartosc 3 
