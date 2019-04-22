#zadanie 1
ma1 = matrix( 0:11, nrow = 3, ncol = 4)
ma1
ma2 = matrix(2, nrow = 3, ncol = 4 )
ma2
ma3= matrix(sample(1:3), nrow = 3, ncol = 4)
ma3

#zadanie 2

ma1 + ma2
ma1 - ma2
ma1 * ma2
ma1 / ma2

ma1 + ma3
ma1 - ma3
ma1 * ma3
ma1 / ma3

#zadanie 3
 print(ma1[1, 4])
 
#zadanie 4
 
ma3 > 2

#zadanie 5

ma4 = rbind(ma1, ma3)
ma4

#zadanie 6 
miasto = c("poznan", "poznan", "poznan")
ra1 = data.frame(daty = c("15.04.2019", "14.04.2019", "13.04.2019"),
                 miasto
                 )

#zadanie 7
ra2 = data.frame(tmin = c(5.3, 4.6, 2.9),
                 tmax = c(11.1, 14.6, 9)
                 )

#zadanie 8 
ra3 = cbind(ra1, ra2)
ra3
tmean = rowMeans(ra3[sapply(ra3, is.numeric)])  
tmean
ra3 = cbind(ra3, tmean)
ra3

#zadanie 9
colnames(ra3) = c("daty", "miasto", "tmin", "tmaks", "tsr")
ra3

#zadanie 10
ra3[tmean > 8, c(1)]

#zadanie 11
li1 = list(c(10:0),
           c(ma4), 
           c(ra3))
li1 
li2 = list("liczby" = c(10:0), "macierz" = c(ma4), "ramka_danych" = c(ra3))
li2
length(li1)

#zadanie 12
wektor_1 = li1[c(1)]
wektor_1

#zadanie 13
li1_3 = li1[3]
li1_3 = as.data.frame(li1_3[1])
mean(rowMeans(li1_3[sapply(li1_3, is.numeric)]))

#zadanie 14
ramka1 = data.frame(wek_log = c(TRUE, FALSE, FALSE),
                    wek_cal = c(5L, -7L, 12L), 
                    wek_zmi = c(5.3, -7.1, 1.1), 
                    wek_zna = c("kot", "pies", "nosorozec"),
                    stringsAsFactors = FALSE)
ramka1
as.matrix(ramka1)
#wszystkie dane zostaly zamienione na tekst 
