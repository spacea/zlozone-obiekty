#zadanie 1.

ma1 = matrix(0:11, nrow = 3, ncol = 4)
ma1

ma2 = matrix(2, nrow = 3, ncol = 4)
ma2

x = 1:3
ma3 = matrix(sample(x, replace = TRUE), nrow = 3, ncol = 4)
ma3

#zadanie 2. 

suma12 = ma1 + ma2
suma12

roznica12 = ma1 - ma2
roznica12

iloczyn12 = ma1 * ma2
iloczyn12

iloraz12 = ma1 / ma2
iloraz12


suma13 = ma1 + ma3
suma13

roznica13 = ma1 - ma3
roznica13

iloczyn13 = ma1 * ma3
iloczyn13

iloraz13 = ma1 / ma3
iloraz13

#zadanie 3.

ma1[c(1), ]
ma1[ ,c(4)]

#zadanie 4. 

subset(ma3 > 2)

#zadanie 5.

ma4 = cbind(ma1,ma3)
ma4

#zadanie 6.

ra1 = data.frame(data = c("2019-04-23", "2019-04-22", "2019-04-21"),
                 miasto = c("Poznan", "Poznan", "Poznan"),
                 stringsAsFactors = FALSE)

ra1

#zadanie 7.

ra2 = data.frame(tmin = c(5.3, 4.6, 2.9),
                 tmax = c(11.1, 14.6, 9),
                 stringsAsFactors = FALSE)

ra2


#zadanie 8.

ra3 = cbind(ra1, ra2)
ra3                 

tmean = data.frame (tmean = c(mean(c(ra3[1,3], ra3[1,4])),
                              mean(c(ra3[2,3], ra3[2,4])),
                              mean(c(ra3[3,3], ra3[3,4])))
)

ra3 = cbind (ra3,tmean)
ra3                 

#zadanie 9. 

colnames(ra3) = c("data", "miasto", "tmin","tmaks", "tsr")
ra3                  

#zadanie 10.

ra3[ra3$tsr > 8, c(1)]

#zadanie 11.


li1 = list(c(10:0),
           c(ma4),
           c(ra3))

li1

#zadanie 12.

wektor_1 = li1[1]
wektor_1

#zadanie 13.

mean(li1[[3]]$tsr)


#zadanie 14.

ra1
class(ra1)

macierz_z_ra1 = as.matrix(ra1)
macierz_z_ra1
class(macierz_z_ra1)
