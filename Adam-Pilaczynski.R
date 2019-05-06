#zadania rozdział 7

#zadanie 7.1 
  ma1 = matrix(0:11, nrow = 3, ncol = 4)
  ma2 = matrix(2, nrow = 3, ncol = 4)
  ma3 = matrix(sample(0:3), nrow = 3, ncol = 4)

  ma1
  ma2
  ma3

#zdanie 7.2
  x = ma1 - ma2
  x

  x1 = ma1 + ma2
  x1

  x2 = ma1 / ma2
  x2

  x3 = ma1 * ma2
  x3


  x4 = ma1 - ma3
  x4

  x5 = ma1 + ma3
  x5

  x6 = ma1 / ma3
  x6

  x7 = ma1 * ma3
  x7

#Działania na macierzach w R, wykonywanie są na liczbach na tych samych pozycjach
#w macierzy.(ten sam wiersz i kolumna)

#zadanie 7.3

  y = ma1[c(1), c(3)]
  y

#zadanie 7.4

  z = ma3 > 2
  z

#zadanie 7.5
  ma4 = cbind(ma1, ma3)
  ma4

# zadanie 7.6
  
  ra1 = data.frame(data = c("2019-04-24", "2019-04-23", "2019-04-22"),
                 
                 miasto = "Skoki")
                 ra1
# zadanie 7.7

  ra2 = data.frame(tmin = c(5.3, 4.6, 2.9),
                 
                 tmax = c(11.1, 14.6, 9))
                 ra2
# zadanie 7.8

  ra3 = cbind(ra1, ra2)

  tmean = (ra3$tmin + ra3$tmax) / 2

  ra3 = cbind(ra3, tmean)
  
  ra3

# zadanie 7.9

  colnames(ra3) = c("data","miasto", "tmin", "tmaks", "tsr")
  
  ra3
# zadanie 7.10

  ra3[(ra3$tmean) > 8, c(1)]
  
  ra3
#zadanie 7.11

  li1 = list(c(10:0),
           
           ma4,
           
           ra3)
 
#zadanie 7.12

  wektor_1 = li1[c(1)]

# zadanie 7.13

  mean(li1[[c(3)]]$tsr)

# zadanie 7.14

as.matrix(ra1)

# Efektem zamiany klasy jest macierz o takich samych rozmiarach i takich samych 
#danych jak ramka, jednak nie ma nazw wierszy, a dane zostały umieszczone w 
#cudzysłowie.
