#1_Stwórz trzy nowe macierze - ma1, ma2, ma3 - składające się z trzech 
#wierszy i czterech kolumn. Macierz ma1 powinna zawierać wartości od 0 
#do 11, cała macierz ma2 powinna składać się tylko z wartości 2, 
#a macierz ma3 powinna zawierać losowe wartości od 1 do 3 
#(w stworzeniu losowych wartości może pomóc funkcja sample()).

ma1 = matrix(0:11, nrow = 3, ncol = 4)
ma1
ma2 = matrix(2, nrow = 3, ncol = 4)
ma2
x = 1:3
ma3 = matrix(sample(x), nrow = 3, ncol = 4)
ma3

#2_Wykonaj podstawowe operacje, takie jak dodawanie, odejmowanie, 
#mnożenie i dzielenie używając macierzy ma1 oraz ma2, a następnie 
#macierzy ma1 i ma3. Co jest efektem tych obliczeń? W jaki sposób 
#działania arytmetyczne są wykonywane na macierzach w R?

ma1 + ma2
ma1 - ma2
ma1 * ma2
ma1 / ma2
ma1 + ma3
ma1 - ma3
ma1 * ma3
ma1 / ma3
#Operacje te powodują osobne działania na poszczególnych 
#elementach zgodnie z ich miejscem w macierzy. W wyniku otrzymujemy
#nowe macierze, możemy stworzyć z nich nowe obiekty.

#3_Wydziel tylko pierwszy wiersz i ostatnią kolumnę macierzy ma1.

ma1[1, 4]
ma1[1, ncol(ma1)]

#4_Znajdź wartości macierzy ma3, które są większe niż 2.

ma3 > 2
ma3[ma3 > 2]


#5_Połącz kolumnami macierz ma1 i macierz ma3 tworząc nowy obiekt ma4

ma4 = cbind(ma1, ma3)
ma4

#6_Stwórz nową ramkę danych, ra1, która składa się z dwóch kolumn
#i trzech wierszy. Pierwsza kolumna data zawiera datę z dziś, 
#wczoraj i przedwczoraj, a kolumna miasto zawiera nazwę miasta w którym
#się właśnie znajdujesz.

ra1 = data.frame(data = c("2019-04-15", "2019-04-14", "2019-04-13"),
                 miasto = c("Poznan", "Poznan", "Poznan"))
ra1
str(ra1)

#7_Stwórz nową ramkę danych, ra2, która również składa się z dwóch 
#kolumn i trzech wierszy. Kolumna tmin zawiera wartości 5.3, 4.6, 2.9, 
#a kolumna tmax zawiera wartości 11.1, 14.6, 9.

ra2 = data.frame(tmin = c(5.3, 4.6, 2.9),
                 tmax = c(11.1, 14.6, 9))
ra2

#8_Połącz dwie stworzone ramki danych ra1 i ra2 tworząc obiekt ra3. 
#Używając obiektu ra3 wylicz średnią temperaturę dla każdego wiersza 
#i wpisz ją w nową kolumnę tmean.

ra3 = cbind(ra1, ra2)
q = mean(as.matrix(ra3[1, c(3,4)]))
w = mean(as.matrix(ra3[2, c(3,4)]))
e = mean(as.matrix(ra3[3, c(3,4)]))
ra4 = data.frame(tmean = c(q, w, e))
ra3 = cbind(ra3, ra4)
ra3

#9_Zmień nazwę drugiej kolumny w obiekcie ra3 na "tmaks", a trzeciej 
#na "tsr".

colnames(ra3) = c("data", "tmaks", "tsr", "tmax", "tmean")
ra3

#10_Wyświetl tylko te daty dla których średnia temperatura była wyższa 
#niż 8.

ra3[ra3$tmean > 8, c(1)]

#11_Stwórz nową listę, li1, która zawiera trzy elementy. Pierwszy 
#element to wektor liczb od 10 do 0, drugi element to obiekt ma4, 
#a trzeci element to obiekt ra3.

li1 = list(c(10:0), ma4, ra3)
li1

#12_Wydziel z tej listy pierwszy element i nazwij go wektor_l.

wektor_1 = li1[[1]]
wektor_1

#13_Wylicz średnią wartość z kolumny "tsr" z trzeciego elementu listy.

#14_Zamień obiekt ramka1 utworzony w tym rozdziale na macierz. 
#Co jest efektem zamiany klasy?

ramka1 = data.frame(wek_log = c(TRUE, FALSE, FALSE),
                    wek_cal = c(5L, -7L, 12L), 
                    wek_zmi = c(5.3, -7.1, 1.1), 
                    wek_zna = c("kot", "pies", "nosorożec"),
                    stringsAsFactors = FALSE)
ramka1
macierz_z_ramka1 = as.matrix(ramka1)





