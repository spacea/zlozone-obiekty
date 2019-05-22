#1zadanie

ma1 <- matrix(0:11, 3, 4)
ma2 <- matrix(2, 3, 4)
ma3 <- matrix(1:3, 3, 4)
sample(ma3, 3)


#2zadanie 

ma1 + ma2
ma1 * ma2
ma1 - ma2
ma2 - ma1
ma1 / ma2

ma1 + ma3
ma1 * ma3
ma1 - ma3
ma3 - ma1
ma1 / ma3

#Zadanie 3

ma1[c(1), c(1,3)]

#Zadanie 4 

ma3[c(ma3>2)]

#Zadanie 5 

ma4 <- rbind(ma1, ma2)

#Zadanie 6 

ra1 <- data.frame(data = c("2019-04-15", "2019-04-14", "2019-04-13"),
       miasto = c("Poznań"),
       stringsAsFactors = FALSE)

#Zadanie 7

ra2 <- data.frame(tmin = c(5.3, 4.6, 2.9),
                 tmax = c(11.1, 14.6, 9),
                 stringsAsFactors = FALSE)

#Zadanie 8 

ra3 <- cbind(ra1, ra2)


ra3 <- data.frame (data = c("2019-04-15", "2019-04-14", "2019-04-13"),
                   tmaks = c("Poznań"),
                   tsr = c(5.3, 4.6, 2.9),
                   tmax = c(11.1, 14.6, 9.0),
                   tmean = c(8.2, 9.6, 5.95),
                   stringsAsFactors = FALSE)

#Zadanie 9 

colnames(ra3) = c("data", "tmaks", "tsr", "tmax")

#Zadanie 10 

ra3$tmean[tmean > 8]

#Zadanie 11

li1 <- list(c(10L, 9L, 8L, 7L, 6L, 5L, 4L, 3L, 2L, 1L, 0L),
           c(ma4),
           c(ra3))
#Zadanie 12

wektor_1 <- li1[[1]]

#Zadanie 13

mean(li1[[c(3)]]$tsr)

#Zadanie 14

as.matrix(ra1)



