#zad1
ma1 = matrix(1:11, nrow=3, ncol=4) 
ma

ma2 = matrix(2, nrow = 3, ncol = 4)
ma2

ma3 = matrix(sample(1:3), nrow = 3, ncol = 4)
ma3

#zad2
ma1 + ma2 
ma1 - ma2 #każde działanie występuje na danej komórce macierzy
ma1 * ma2  
ma1/ma2  #dzielone komórkami macierzy

ma3 + ma1
ma3 - ma1
ma3 * ma1
ma3/ma1

#zad3
ma1[c(1), ]
ma1[ , c(4)]

#zad4
ma3[ma3 > 2] 

#zad5
ma4 = cbind(ma1, ma3)
ma4

#zad6
ra1 = data.frame(data = c('2019-15-04' , '2019-14-04' , '2019-13-04'),
                 miasto = c("Poznań"))
ra1

#zad7 
ra2 = data.frame(tmin = c( 5.3 , 4.6 , 2.9),
                tmax = c(11.1 , 14.6 , 9.0))
ra2

#zad8 
ra3 = cbind(ra1 , ra2)
ra3

tmean = (ra3$tmin + ra3$tmax) / 2

ra3 = cbind(ra3, tmean)

ra3

#zad9
colnames(ra3) = c("data", "miasto", "tmin", "tmaks", "tsr")
ra3

#zad10



#zad11
li1 = list(c(10:0),
           c(ma4),
           c(ra3)
)
li1           

#zad12
wektor_1 = li1[c(1)]
wektor_1


#zad14
macierz = as.matrix(ra1)
macierz
class(macierz)
