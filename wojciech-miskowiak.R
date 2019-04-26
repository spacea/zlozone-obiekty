#1

ma1 = matrix(0:11, nrow = 3, ncol = 4)
ma1

ma2 = matrix(2:2, nrow = 3, ncol = 4)
ma2

ma3 = matrix(nrow = 3, ncol = 4, sample(1:3))
ma3

#2

ma1 + ma2
ma1 + ma3


ma1 - ma2
ma1 - ma3 


ma1 * ma2
ma1 * ma3


ma1 / ma2
ma1 / ma3


# Wynikami tych działań są odpowiadające im operacje zachodzących w komórkach o tym samym położeniu

#3

ma1[c(1,0), c(4,0)]

#4

ma3[ma3 > 2]

#5

ma4 = cbind(ma1, ma3)
ma4

#6

ra1 = data.frame(data = as.Date(c("2007-06-22", "2004-02-13", "2022-11-21")),
                 miasto = c("Poznan", "Poznan", "Poznan"),
                 stringsAsFactors = FALSE
)
ra1
#7

ra2 = data.frame(tmin = c(5.3, 4.6, 2.9),
                 tmax = c(11.1, 14.6, 9)
)

ra2

#8

ra4 = data.frame(tmean = c((11.1 + 5.3) / 2, (14.6 + 4.6) / 2, (9.0 + 2.9) /2))

ra4

ra3 = cbind(ra1, ra2, ra4)

ra3

#9

colnames(ra3) = c("data", "tmax", "tsr", "tmax", "tmean")

ra3

#10

ra3[ra3$tmean > 8, c(1, 2, 3)]

#11


li1  =  list(c ( 10 : 0 ),
             ( ma4 ),
             ( ra3 ))

li1

#12

wektor_1 = li1[c(1)]

wektor_1

#13

#14

ramka1 = data.frame(wek_log = c(TRUE, FALSE, FALSE),
                    wek_cal = c(5L, -7L, 12L), 
                    wek_zmi = c(5.3, -7.1, 1.1), 
                    wek_zna = c("kot", "pies", "nosorożec"),
                    stringsAsFactors = FALSE)

as.matrix(ramka1)

#efektem jest macierz której elementy są obiektami tekstowymi