#zadania rozdział 7

# 7.1 
ma1 = matrix(0:11, nrow = 3, ncol = 4)
ma2 = matrix(2, nrow = 3, ncol = 4)
ma3 = matrix(sample(0:3), nrow = 3, ncol = 4)

ma1
ma2
ma3

# 7.2
x = ma1 + ma2
x

x1 = ma1 - ma2
x1

x2 = ma1 * ma2
x2

x3 = ma1 / ma2
x3


x4 = ma1 + ma3
x4

x5 = ma1 - ma3
x5

x6 = ma1 * ma3
x6

x7 = ma1 / ma3
x7

#Działania na macierzach w R, wykonywanie są poprzez dodawanie, dzielenie itp.
#liczb na tych samych pozycjach w macierzy.(ten sam wiersz i kolumna)

# 7.3

y = ma1[c(1), c(3)]
y

# 7.4

z = ma3 > 2
z

# 7.5
ma4 = cbind(ma1, ma3)
ma4

# 7.6
ra1 = data.frame(data = c(13.04, 14.04, 15.04),
                 miasto = c("Poznan"))
ra1

# 7.7
ra2 = data.frame(tmin = c(5.3, 4.6, 2.9),
                 tmax = c(11.1, 14.6, 9))
ra2

# 7.8

ra3 = cbind(ra1, ra2)
ra3

mean(ra3[c(1), c(3,4)])

r1 = (ra3[c(1), c(3,4)])
r2 = (ra3[c(2), c(3,4)])
r3 = (ra3[c(3), c(3,4)])




rd1 = as.double(r1)
rd1
mean(rd1)
rd2 = as.double(r2)
rd2
mean(rd2)
rd3 = as.double(r3)
rd3
mean(rd3)

rmean = data.frame(tmean = c(mean(rd1), mean(rd2), mean(rd3)))
rmean

ra3 = cbind(ra3, rmean)
ra3

# 7.9
colnames(ra3) = c("data", "miasto", "tmin", "tmaks", "tsr")
ra3

# 7.10

subset(ra3, tsr > 8)


# 7.11

li1 = list(c(10:0), ma4, ra3)
li1

# 7.12

wektor_1 = li1[1]
wektor_1

# 7.13

mean(li1$tsr)


# 7.14 

ra1 = data.frame(data = c(13.04, 14.04, 15.04),
                 miasto = c("Poznan"))
as.matrix(ra1)

# Efektem zamiany klasy jest macierz o takich samych rozmiarach i takich samych danych
# jak ramka, jednak nie ma nazw wierszy, a dane zostały umieszczone w cudzysłowie.


