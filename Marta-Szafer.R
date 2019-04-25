#zadanie_1

ma1 = matrix(0:11, nrow = 3, ncol = 4)
ma1

ma2 = matrix(2, nrow = 3, ncol = 4)
ma2

ma3 = matrix(sample(1:3), nrow = 3, ncol = 4)
ma3

#zadanie_2

ma1 + ma2       #dodanie odpowiadajacych sobie miejsc w macierzach
ma1 - ma2       #odjecie od siebie odpowiadajacych sobie miejsc
ma1 * ma2       #wymnozene....
ma1 / ma2       #podzielenie....

ma1 + ma3
ma1 - ma3   
ma1 * ma3
ma1 / ma3

#zadanie_3

ma1[c(1:4), c(1:3)]

#zadanie_4

ma3 > 2

#zadanie_5

ma4 = cbind(ma1, ma3)
ma4

#zadanie_6

ra1 = data.frame(wek_data = as.Date(c("2019-03-25", "2019-03-24", "2019-03-23")),
                 wek_miasto = "Poznan")
ra1

#zadanie_7

ra2 = data.frame (tmin = c(5.3, 4.6, 2.9),
                  tmax = c(11.1, 14.6, 9))
ra2

#zadanie_8


ra3 = cbind(ra1, ra2)

w1 = c(5.3, 11.1)
w2 = c(4.6, 14.6)
w3 = c(2.9, 9)
tmean = c(mean(w1), mean(w2),mean(w3))
tmean
ra3 = cbind(ra3, tmean)
ra3

#zadanie_9


colnames(ra3) = c('data', 'miato', 'tmin','tmaks', 'tsr' )
ra3


#zadanie_10

ra3(tmin, tmax) > 8

#zadanie_11

li1 = list(c(10:0),
           c(ma4),
           c(ra3))
li1

#zadanie_12

wektor_1 = li1[[1]]
wektor_1

#zadanie_13

tsr1 = li1[3]
tsr1
tsr2 = tsr1['tsr']
mean(tsr2)

#zadanie_14

ramka1 = data.frame(wek_log = c(TRUE, FALSE, FALSE),
                    wek_cal = c(5L, -7L, 12L), 
                    wek_zmi = c(5.3, -7.1, 1.1), 
                    wek_zna = c("kot", "pies", "nosoroĹĽec"),
                    stringsAsFactors = FALSE)
mac_ram = as.matrix(ramka1)
mac_ram
str(mac_ram)






