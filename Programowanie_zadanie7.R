# ZADANIE 1 #


ma1 = matrix(0:11, nrow = 3, ncol = 4)

ma1 

ma2 = matrix(2, nrow = 3, ncol = 4)

ma2

ma3 = matrix(sample(1:3, size = 12, replace = TRUE), nrow = 3, ncol = 4)

ma3

# ZADANIE 2 #

ma1 = matrix(0:11, nrow = 3, ncol = 4)

ma2 = matrix(2, nrow = 3, ncol = 4)

ma3 = matrix(sample(1:3, size = 12, replace = TRUE), nrow = 3, ncol = 4)

ma1 * ma2 =
ma1 / ma2 =
ma1 + ma2 = 
ma1 - ma2 =

ma1 * ma3 =
ma1 / ma3 =
ma1 + ma3 =
ma1 - ma3 =



# ZADANIE 3 #
  

ma1[c(1), c(4)]


# ZADANIE 4 #


ma3 > 2


# ZADANIE 5 #


ma4 = cbind(ma1, ma3)

ma4


# ZADANIE 6 # 



ra1 = data.frame(data = c("2019-04-25", "2019-04-24", "2019-04-23"), miasto = "Konin")

ra1


# ZADANIE 7 # 



ra2 = data.frame(tmin = c(5.3, 4.6, 2.9),  tmax = c(11.1, 14.6, 9))

ra2

# ZADANIE 8 #


tmean = (ra3$tmin + ra3$tmax) / 2

ra3 = cbind(ra1, ra2)

ra3 = cbind(ra3, tmean)

ra3

tmean

# ZADANIE 9 #


colnames(ra3) = c("data","miasto", "tmin", "tmaks", "tsr")



# ZADANIE 10 #



ra3[ra3$tmean > 8, c(1)]




# ZADANIE 11 #


li1 = list(c(10:0), ma4, ra3)

li1
 


# ZADANIE 12 # !


wektor_1 = li1 [[1]]


# ZADANIE 13 # !


mean(li1[[3]]$tsr)


# ZADANIE 14 # !

as.matrix(ra1)
