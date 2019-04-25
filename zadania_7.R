# zadanie 1
ma1 = matrix(0:11, nrow = 3, ncol = 4)
ma2 = matrix(2, nrow = 3, ncol = 4)
ma3 = matrix(sample(1:3, size = 12, replace = TRUE), nrow = 3, ncol = 4)

# zadanie 2
ma1 + ma2
ma1 - ma2
ma1 * ma2
ma1 / ma2

ma1 + ma3
ma1 - ma3
ma1 * ma3
ma1 / ma3

# zadanie 3
ma1[c(1), c(4)]

# zadanie 4
ma3 > 2

# zadanie 5
ma4 = cbind(ma1, ma3)

# zadanie 6
ra1 = data.frame(data = c("2019-04-15", "2019-04-14", "2019-04-13"),
                   miasto = "Poznan")

# zadanie 7
ra2 = data.frame(tmin = c(5.3, 4.6, 2.9),
                 tmax = c(11.1, 14.6, 9))

# zadanie 8
ra3 = cbind(ra1, ra2)

tmean = (ra3$tmin + ra3$tmax) / 2

ra3 = cbind(ra3, tmean)

# zadanie 9
colnames(ra3) = c("data","miasto", "tmin", "tmaks", "tsr")

# zadanie 10

if (ra3[1,5] > 8){
 cat(paste(ra3[1,1]))
} & if (ra3[2,5] > 8){
  cat(paste(ra3[2,1]))
} & if (ra3[3,5] > 8){
  cat(paste(ra3[3,1]))
}



#zadanie 11
li1 = list(c(10:0),
           ma4,
           ra3)
#zadanie 12
wektor_1 = li1[c(1)]

# zadanie 13
mean(li1[[c(3)]]$tsr)

# zadanie 14
as.matrix(ra1)
