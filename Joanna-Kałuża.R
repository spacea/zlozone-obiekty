#1.

ma1 = matrix(0:11, nrow = 3, ncol = 4)
ma2 = matrix(0:11, nrow = 3, ncol = 4)
ma3 = matrix(sample(1:3), nrow = 3, ncol = 4)

#2.

ma1 + ma2
ma1 - ma2
ma1 * ma2
ma1 / ma2

ma1 + ma3
ma1 - ma3
ma1 * ma3
ma1 / ma3

#Efektem tych macierzy są nowe macierze. Działania są wykonywane kolejno na obiektach, obiekt w pierwszym wierszu i pierwszej kolumnie podlega działaniu z obiektem o takim samym położeniu w drugiej macierzy.  

#3.

ma1[1, 4]

#4.

ma3[ma3 > 2] 

#5.

ma4 = cbind(ma1, ma3)
ma4

#6.

ra1 = data.frame(data = c("2019-04-15", "2019-04-14", "2019-04-13"),
                 miasto = c("Poznan", "Poznan", "Poznan"))
ra1

#7.

ra2 = data.frame(tmin = c(5.3, 4.6, 2.9),
                 tmax = c(11.1, 14.6, 9))
ra2

#8.

ra3 = cbind(ra1, ra2)
ra3
tmean_15 = mean(c(5.3, 11.1))
tmean_14 = mean(c(4.6, 14.6))
tmean_13 = mean(c(2.9, 9.0))

ra4 = data.frame(tmean = c(tmean_15, tmean_14, tmean_13))
ra3 = cbind(ra3, ra4)
ra3

#9.

colnames(ra3) = c("data", "miasto", "tmin", "tmaks", "tsr")
ra3

#10.

ra3[ra3$tsr > 8, c(1,5)]

#11.

lil = list(c(10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0), ma4, ra3)
lil 

#12.

wektor_l = lil[1]
wektor_l

#13.

srednia_tsr = mean(lil[[3]]$tsr)
srednia_tsr

#14.

ramka1 = data.frame(wek_log = c(TRUE, FALSE, FALSE),
                    wek_cal = c(5L, -7L, 12L), 
                    wek_zmi = c(5.3, -7.1, 1.1), 
                    wek_zna = c("kot", "pies", "nosorożec"),
                    stringsAsFactors = FALSE)

matrix_z_ramka1 = as.matrix(ramka1)
matrix_z_ramka1
class(matrix_z_ramka1)

#W efekcie z ramki danych powstała macierz, która składa się z elementów tekstowych( obiekty logiczne i numeryczne zmieniły się na tekstowe), nazwy kolumn pozostały bez zmian.