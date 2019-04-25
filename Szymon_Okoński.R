# zad 1
ma1 = matrix(0:11, nrow = 3, ncol = 4)
ma2 = matrix(2, nrow = 3, ncol = 4)
ma3 = matrix(sample(1:3, size = 12, replace = TRUE), nrow = 3, ncol = 4)

# zad 2
ma1 + ma2
ma1 - ma2
ma1 * ma2
ma1 / ma2

ma1 + ma3
ma1 - ma3
ma1 * ma3
ma1 / ma3

# zad 3
ma1[c(1), c(4)]

# zad 4
ma3 > 2

# zad 5
ma4 = cbind(ma1, ma3)

# zad 6
ra1 = data.frame(data = c("2019-04-15", "2019-04-14", "2019-04-13"),
                   miasto = "Poznan")

# zad 7
ra2 = data.frame(tmin = c(5.3, 4.6, 2.9),
                 tmax = c(11.1, 14.6, 9))

# zad 8
ra3 = cbind(ra1, ra2)

tmean = (ra3$tmin + ra3$tmax) / 2

ra3 = cbind(ra3, tmean)

ra3

# zad 9
colnames(ra3) = c("data","miasto", "tmin", "tmaks", "tsr")

# zad 10

ra3[(ra3$tmean) > 8, c(1)]

#zad 11
li1 = list(c(10:0),
           ma4,
           ra3)
#zad 12
wektor_1 = li1[c(1)]

# zad 13
mean(li1[[c(3)]]$tsr)

# zad 14
as.matrix(ra1)
