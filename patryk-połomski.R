#1
ma1 <- matrix(0:11, nrow=3, ncol=4)
ma2 <- matrix(rep(2,12), nrow=3, ncol=4)
ma3 <- matrix(sample(1:3,12, replace=TRUE), nrow=3, ncol=4)

#2
ma1+ma2
ma1-ma2
ma1/ma2
ma1*ma2

ma1+ma3
ma1-ma3
ma1/ma3
ma1*ma3

#3
c(ma1[,ncol(ma1)], ma1[1,1:ncol(ma1)])

#4
ma1[ma1>2]

#5
ma4 <- cbind(ma1,ma3)

#6
# Stwórz nową ramkę danych, ra1, która składa się z dwóch kolumn i trzech wierszy. 
# Pierwsza kolumna data zawiera datę z dziś, wczoraj i przedwczoraj, 
# a kolumna miasto zawiera nazwę miasta w którym się właśnie znajdujesz.

ra1 <- data.frame(data = c(Sys.Date(),Sys.Date() - 1, Sys.Date() - 2),
                  miasto = "Poznań"
                  )
#7
# Stwórz nową ramkę danych, ra2, która również składa się z dwóch kolumn i trzech wierszy. 
# Kolumna tmin zawiera wartości 5.3, 4.6, 2.9, a kolumna tmax zawiera wartości 11.1, 14.6, 9

ra2 <- data.frame(tmin = c(5.3, 4.6, 2.9),
                  tmax = c(11.1, 14.6, 9)
                  )

#8
ra3 <- cbind(ra1,ra2)

tmean_ma <- matrix(c(ra3$tmin, ra3$tmax), nrow = 3, ncol = 2)

tmean <- data.frame(tmean = c(mean(tmean_ma[1,1:ncol(tmean_ma)]),
                   mean(tmean_ma[2,1:ncol(tmean_ma)]),
                   mean(tmean_ma[3,1:ncol(tmean_ma)]))
                   )

ra3 <- cbind(ra3,tmean)
ra3

#9
colnames(ra3) = c("data", "miasto", "tmin", "tmax", "tsr")
ra3
#10
ra3[ra3$tsr > 8,]

#11 Stwórz nową listę, li1, która zawiera trzy elementy. 
# Pierwszy element to wektor liczb od 10 do 0, 
# drugi element to obiekt ma4, a trzeci element to obiekt ra3.

li1 <- list(c(10:0),
            ma4,
            ra3)

#12
wektor_1 <- li1[[1]]


#13

mean(li1[[3]]$tsr)

#14

ramka1 = data.frame(wek_log = c(TRUE, FALSE, FALSE),
                    wek_cal = c(5L, -7L, 12L), 
                    wek_zmi = c(5.3, -7.1, 1.1), 
                    wek_zna = c("kot", "pies", "nosorożec"),
                    stringsAsFactors = FALSE)

ramka1_ma <- as.matrix.data.frame(ramka1,rownames.force = 1)
ramka1_ma2 <- as.matrix(ramka1)

str(ramka1_ma)

#chr? tekst?, dlaczego?


