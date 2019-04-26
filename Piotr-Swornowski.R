#zadanie 1

ma1 = matrix(0:11 , nrow = 3 , ncol = 4)

ma2 = matrix(2 , nrow = 3 , ncol = 4)

ma3 = matrix(sample(1:3) , nrow = 3 , ncol = 4)

#zadanie 2

ma1 + ma2
ma1 / ma2
ma1 * ma2
ma1 - ma2

ma1 + ma3
ma1 / ma3
ma1 * ma3 
ma1 - ma3

#zadanie 3

ma1[1 , 4]

#zadanie 4

ma3[ma3 > 2]

#zadanie 5

ma4 = cbind(ma1 , ma3)

#zadanie 6

ra1 = data.frame( data = c(Sys.Date() , Sys.Date() - 1 , Sys.Date() - 2),
                  miasto = c("Poznan" , "Poznan" , "Poznan"))

#zadanie 7

ra2 = data.frame( tmin = c(5.3 , 4.6 , 2.9),
                  tmax = c(11.1 , 14.6 , 9))

#zadanie 8 

ra3 = cbind(ra1, ra2)

tmean = c(ra3$tmin+ra3$tmax/2)

ra3 = cbind(ra3, tmean)

#zadanie 9 

colnames(ra3) = c("data","tmaks","tsr","tmax","tmean")

#zadanie 10

ra3$tmean[tmean > 8]

#zadanie 11

li1 = list( c = (10:0),
            ma4,
            ra3)

#zadanie 12

wektor_1 = li1[[1]]

#zadanie 13

mean(li1[[3]]$tsr)

#zadanie 14

ramka1 = data.frame(wek_log = c(TRUE, FALSE, FALSE),
                    wek_cal = c(5L, -7L, 12L), 
                    wek_zmi = c(5.3, -7.1, 1.1), 
                    wek_zna = c("kot", "pies", "nosorożec"),
                    stringsAsFactors = FALSE)