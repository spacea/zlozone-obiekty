#zadanie 1
ma1 <- matrix(0:11, 3, 4)
ma2 <- matrix(2, 3, 4)
ma3 <- matrix(sample(1:3), 1:3, nrow = 3, ncol = 4)

ma1
ma2
ma3

#Zadanie 2
#a 
ma1 ^ ma2  
ma1 / ma2 
ma1 + ma2 
ma1 - ma2
ma2 - ma1
ma2 / ma1

#b
ma1 ^ ma3 
ma1 / ma3 
ma1 + ma3 
ma1 - ma3
ma3 / ma1
ma3 - ma1
#dzialania sa wykonywane tylko na wartosciach przypisanych do tych samych 
#kolumn i wierszy

#Zadanie 3
ma1 [c(1), ]
ma1 [ ,c(4)]

#Zadanie 4
ma3[c(ma3 > 2)]

#Zadanie 5
ma4 <- cbind(ma1, ma3)
ma4

#Zadanie 6
ra1 <- data.frame(data = c(Sys.Date(), Sys.Date()-1, Sys.Date()-2),
                  miasto = c("Poznań"))
                  
ra1

#Zadanie 7
ra2 <- data.frame(tmin = c("5.3", "4.6", "2.9"),
                  tmax = c("11.1", "14.6", "9"))
                
ra2

#Zadanie 8
ra3 <- cbind(ra1, ra2)
ra3

ra4 <- data.frame(data = c(Sys.Date(), Sys.Date()-1, Sys.Date()-2),
                  miasto = c("Poznań"),
                  tmin = c("5.3", "4.6", "2.9"),
                  tmax = c("11.1", "14.6", "9"),
                  tmean = c(((5.3+11.1)/2), ((4.6+14.6)/2), ((2.9+9)/2)))
                 
ra4
#Zadanie 9
colnames(ra4) <- c("data","miasto","tmin","tmaks","tsr")
ra4
#mam nadzieje, ze chodzilo o 2 i 3 kolumne z wartosciami liczbowymi

#Zadanie 10 Uzylem zmieniona nazwe kolumny
subset(ra4, tsr > 8)

#Zadanie 11
li1 <- list(c(10:0),
            c(ma4),
            c(ra3))
li1

#Zadanie 12
wektor_1 <- li1[1]

wektor_1
#or
str(wektor_1)

#Zadanie 13
mean(li1[[3]]$tmean)

#Zadanie 14
ramka1 <- as.matrix(ra1)
ramka1
class(ramka1)
#Zmienia sie numeracja wierszy (dodawane sa nawiasy kwadratowe), 
#a wartosci w macierzy zapisywane sa w cudzyslowiu. Co oznacza, że zmieniają się
#na dane tekstowe.
