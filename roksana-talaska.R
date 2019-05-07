
#Zadania_z_rozdzia³u_7_zlozone_obiekty



#zadanie_1

ma1 = matrix (0:11, nrow = 3, ncol = 4)

ma2 = matrix (2:2, nrow = 3, ncol = 4)

ma3 = matrix (sample (1:3), nrow = 3, ncol = 4, TRUE, NULL)



#zadanie_2

ma1 + ma2
ma1 - ma2
ma1 * ma2
ma1 / ma2

ma1 + ma3
ma1 - ma3
ma1 * ma3
ma1 / ma3

#Dzialania na macierzach w R sa wykonywane poprzez dokonianie dzialania 
#arytmetycznego na liczbie z pierwszej macierzy oraz odpowiadajacej mu 
#liczbie z drugiej macierzy, ktora znajduje sie w tym samym wierszu i tej 
#samej kolumie co pierwsza liczba.


#zadanie_3

ma1 [c (1), c (4)]


#zadanie_4

ma3 > 2


#zadanie_5

ma4 = cbind (ma1, ma3)


#zadanie_6

ra1 = data.frame (data = c ("2019-04-25", "2019-04-24", "2019-04-23"),
                  miasto = c ("Poznan"),
                  stringsAsFactors = FALSE)


#zadanie_7

ra2 = data.frame (tmin = c (5.3, 4.6, 2.9),
                  tmax = c (11.1, 14.6, 9),
                  stringsAsFactors = FALSE)


#zadanie_8

tmean = c(5.3 + 11.1, 4.6 + 14.6, 2.9 + 9) / 2

ra3 = cbind (ra1, ra2, tmean)


#zadanie_9

colnames (ra3) = c("data", "miasto", "tmin", "tmaks", "tsr")


#zadanie_10
ra3 [ra3$tsr > 8]


#zadanie_11

li1 = list (c (1:10), 
            c (ma4),
            c (ra3))

#zadanie_12
wektor_1 = li1 [[1]]


#zadanie_13

sum (tmean) / 3


#zadanie_14

class (ra1)

ra1_na_ma = as.matrix (ra1)

class (ra1_na_ma)