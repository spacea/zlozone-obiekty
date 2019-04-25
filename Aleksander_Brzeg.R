# zadanie 1

ma1 <- matrix(0:11, nrow = 3, ncol = 4)
ma2 <- matrix(2, nrow = 3, ncol = 4)
ma3 <- matrix(sample(1:3), nrow = 3, ncol = 4)
ma1
ma2
ma3

# zadanie 2

ma1+ma2
ma1-ma2
ma1 * ma2
ma1 / ma2 

ma1 + ma3
ma1 - ma3
ma1 * ma3
ma1 / ma3

#Działania na macierzach w R - każdy element z jednej macierzy, przez odpowiadający mu element z drugiej. 

# zadanie 3

ma1[1, 4]

#zadanie 4 

ma3[ma3>2]

#zadanie 5

ma4 <- cbind(ma1, ma3)
ma4

# zadanie 6

ra1 <- data.frame(data = as.Date(c('2019-04-23', '2019-04-24', '2019-04-25')),
                 miasto = c('Miami', 'Vancouver', 'Kobylnica'),
                 stringsAsFactors = FALSE)

ra1

# zadanie 7

ra2 <- data.frame(tmin = c(5.3, 4.6, 2.9),
                  tmax = c(11.1, 14.6, 9))
ra2

# zadanie 8

ra3 <- cbind(ra1, ra2)

w1 <- c(5.3, 11.1)
w2 <- c(4.6, 14.6)
w3 <- c(2.9, 9)
tmean <- c(mean(w1), mean(w2),mean(w3))
tmean
ra3 <- cbind(ra3, tmean)
ra3

# zadanie 9

colnames(ra3) <- c('data', 'miato', 'tmin','tmaks', 'tsr' )
ra3

# zadanie 10 

ra3[ra3$tsr > 8]


# zadanie 11


li1 <- list(c(10:1),
            ma4,
            ra3)
li1

# zadanie 12
wektor1 <- li1[[1]]
wektor1


# zadanie 13

tsr1 <- li1[3]
tsr1
tsr2 <- tsr1['tsr']
mean(tsr2)

#zadanie 14 
ramka1 = data.frame(wek_log = c(TRUE, FALSE, FALSE),
                    wek_cal = c(5L, -7L, 12L), 
                    wek_zmi = c(5.3, -7.1, 1.1), 
                    wek_zna = c("kot", "pies", "nosorożec"),
                    stringsAsFactors = FALSE)
mac_ram <- as.matrix(ramka1)
mac_ram
str(mac_ram)
