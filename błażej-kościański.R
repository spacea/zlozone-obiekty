#1
ma1 <- matrix(0:11, nrow = 3, ncol = 4)
ma2 <- matrix(2, nrow = 3, ncol = 4)
ma3 <- matrix(sample(1:3), nrow = 3, ncol = 4)

#2
ma1 + ma2
ma1 - ma2
ma1 * ma2
ma1 / ma2

ma1 + ma3
ma1 - ma3
ma1 * ma3
ma1 / ma2

#Działania na macierzach wykonywane są jako działania na liczbach o tych samych pozycjach w macierzach

#3
c(ma1[1, 1:ncol(ma1)], ma1[1:nrow(ma1), ncol(ma1)])

#4
ma3[ma3 > 2]

#5
ma4 <- cbind(ma1, ma3)

#6
ra1 <- data.frame(data = as.Date(c("2019-03-25", "2019-03-24", "2019-03-23")),
                  miasto = c("Poznań")
                  )

#7
ra2 <- data.frame(tmin = c(5.3, 4.6, 2.9),
                  tmax = c(11.1, 14.6, 9)
                  )

#8
ra3 <- cbind((cbind(ra1, ra2)), data.frame(tmean = c(mean(c(ra3[1, 3], ra3[1, 4])),
                                 mean(c(ra3[2, 3], ra3[2, 4])),
                                  mean(c(ra3[3, 3], ra3[3, 4]))
                                  )
                        )
             )

#9
names(ra3) = c("data", "miasto", "tmin", "tmaks", "tsr")

#10
ra3[ra3$tsr > 8, ]

#11
li1 <- list(c(1:10),
            ma4,
            ra3
            )

#12
wektor_l <- li1[1]

#13
mean(li1[[3]]$tsr)

#14
as.matrix(ra1)
#wszystkie dane zamieniane są na dane tekstowe
