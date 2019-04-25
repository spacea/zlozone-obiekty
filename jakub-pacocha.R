#1
ma1 = matrix(0:11, nrow = 3, ncol = 4)
ma2 = matrix(2, nrow = 3, ncol = 4)
losowe = c(1:3)
ma3 = matrix(sample(losowe), nrow = 3, ncol = 4) 

#2
ma1 + ma3
ma1 - ma3
ma1 / ma3
ma1 * ma3

ma1 + ma2
ma1 - ma2
ma1 / ma2
ma1 * ma2

#Efektem obliczeń jest nowa macierz. Działania wykonywane na macierzach to działania wykonywane
#pomiędzy dwoma wyrazami macierzy o tych samych współrzędnych (np. wyraz ma1 pierwszej kolumny
#i drugiego wiersza (1) dodawany jest z wyrazem ma2 pierwszej kolumny drugiego wiersza (2);
#otrzymujemy 3, a wynik wpisywany jest w tą samą współrzędną(1 kolumna, drugi wiersz).

#3
ma1[c(1), c(4)]
ma1[c(1), (ncol(ma1))]


ma = ma1[1,]
mb = ma1[, ncol(ma1)]

ma
mb
c(ma, mb)

#4
ma3[ma3 > 2]

#5
ma4 = cbind(ma1, ma3)
ma4

#6
ra1 = data.frame(data = as.Date(c("2019-04-15", "2019-04-14", "2019-04-13")),
                 miasto = c("Poznan"),
                 stringsAsFactors = FALSE)                         
ra1

#7
ra2 = data.frame(tmin = c(5.3, 4.6, 2.9),
                 tmax = c(11.1, 14.6, 9))      
ra2

#8
ra3_1 = cbind(ra1, ra2)
ra3_1

ra3 = data.frame(tmean = c(mean(c(ra3_1[1,3], ra3_1[1,4])),
                           mean(c(ra3_1[2,3], ra3_1[2,4])),
                           mean(c(ra3_1[3,3], ra3_1[3,4]))))



ra3 = cbind(ra3_1, ra3)

ra3

#9
colnames(ra3) = c("data", "miasto", "tmin", "tmaks", "tsr")
ra3

#10
ra3[ra3$tsr > 8,]

#11
li1 = list(c(0:10),
           ma4,
           ra3)
li1

#12
wektor_1 = li1[[1]]

wektor_1

#13
tsr = mean(li1[[3]]$tsr)

tsr

#14
ramka1 = data.frame(wek_log = c(TRUE, FALSE, FALSE),
                    wek_cal = c(5L, -7L, 12L), 
                    wek_zmi = c(5.3, -7.1, 1.1), 
                    wek_zna = c("kot", "pies", "nosorożec"),
                    stringsAsFactors = FALSE)

zamiana = as.matrix(ramka1)
zamiana

#Efektem zamiany jest macierz złożona z obiektów klasy tekstowej.


