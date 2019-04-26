1.
ma1 = matrix(0:11, 3, 4)
ma1
ma2 = matrix(2, 3, 4)
ma2
ma3 = matrix(sample(1:3), 3, 4)
ma3

x = 1:3 
sample(x)
sample(x, replace = TRUE)
ma3 = matrix(sample(x, replace = TRUE), 3, 4)

2.
ma1 + ma2
ma1 - ma2
ma1 / ma2
ma1 * ma2
ma2 + ma1
ma2 - ma1
ma2 * ma1
ma2 / ma1

ma1 * ma3
ma1 - ma3
ma1 + ma3
ma1 / ma3
ma3 + ma1
ma3 - ma1
ma3 * ma1
ma3 / ma1

Efektem tych oblicze? s? wyniki dzia?a? pomi?dzy macierzami. 
Dzia?ania arytmetyczne s? wykonywane dla takich samych macierzy pod wzgl?dem wielko?ci. Jedna warto?? pierwszej macierzy wykonuje dzaia?anie arytmetyczne z warto?ci? o tym samym po?o?eniu na drugiej macierzy. 

3.
ma1
ma1[c(1),c(1:4)]
ma1[c(1:3), c(4)]

4.
ma3 > 2
ma3[ma3 > 2]

5. 
ma1 + ma3
ma3
ma1
ma4 = cbind(ma1, ma3)
ma4 

6.
ra1 = data.frame(data = as.Date(c("2019-04-22", "2019-04-23", "2019-04-24")), miasto = c("Pozna?", "Pozna?", "Pozna?"), stringsAsFactors = FALSE)
ra1

7.
ra2 = data.frame(tmin = c(5.3, 4.6, 2.9), tmax = c(11.1, 14.6, 9), stringsAsFactors = FALSE)
ra2

8.
ra3 = cbind(ra1, ra2)
ra3
ra3$tmin
ra3$tmax
(ra3$tmin + ra3$tmax) / 2
ra3 = data.frame(data = as.Date(c("2019-04-22", "2019-04-23", "2019-04-24")), miasto = c("Pozna?", "Pozna?", "Pozna?"), tmin = c(5.3, 4.6, 2.9), tmax = c(11.1, 14.6, 9), tmean = c( 8.20, 9.60, 5.95), stringsAsFactors = FALSE)  
ra3

9.
colnames(ra3) = c("data", "tmaks", "tsr", "tmax", "tmean") 
ra3

10.
ra3[ra3$tmean > 8, c(1)]

11.
li1 = list(c(10:0), c(ma4), c(ra3))
li1

12.
wektor_l = li1[c(1)]
wektor_l

13.
li1
li1$tsr
li1[[3]][5.3, 4.6, 2.9]
(5.3 + 4.6 + 2.9) / 3

14.
ramka1 = data.frame(wek_log = c(TRUE, FALSE, FALSE), wek_cal = c(5L, -7L, 12L), wek_zmi = c(5.3, -7.1, 1.1), wek_zna = c("kot", "pies", "nosoro?ec"),  stringsAsFactors = FALSE) 
ramka1
macierz_z_ramka1 = as.matrix(ramka1)
macierz_z_ramka1
Efektem zamiany klasy s? cudzys?owia powsta?e w ka?dym wyrazie macierzy oraz nawiasy kwadratowe z przecinkami, oznaczaj?c numer wierszy macierzy, tak?e elementy: kot, pies, nosoro?ec zosta?y wyr?wnane do prawej strony.  
