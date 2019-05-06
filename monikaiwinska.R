#zadanie 1
#Stwórz trzy nowe macierze - ma1, ma2, ma3 - składające się
#z trzech wierszy i czterech kolumn. Macierz ma1 powinna
#zawierać wartości od 0 do 11, cała macierz ma2 powinna
#składać się tylko z wartości 2, a macierz ma3 powinna
#zawierać losowe wartości od 1 do 3 (w stworzeniu losowych
#wartości może pomóc funkcja sample())..

ma1 = matrix(0:11, nrow = 3, ncol = 4)
ma1

ma2 = matrix(2, nrow = 3, ncol = 4)
ma2

ma3 = matrix(sample(1:3), nrow = 3, ncol = 4)
ma3

#zadanie 2
#Wykonaj podstawowe operacje, takie jak dodawanie, odejmowanie, mnożenie
#i dzielenie używając macierzy ma1 oraz ma2, a następnie macierzy ma1 i ma3.
#Co jest efektem tych obliczeń? W jaki sposób działania arytmetyczne są
#wykonywane na macierzach w R?



ma1 + ma2
ma1 - ma2
ma1 * ma2
ma1 / ma2


ma1 + ma3
ma1 - ma3
ma1 * ma3
ma1 / ma3

#zadanie 3
#Wydziel tylko pierwszy wiersz i ostatnią kolumnę macierzy ma1.

ma1[c(1), c(4)]

#zadanie 4
#Znajdź wartości macierzy ma3, które są większe niż 2.

ma3[ma3>2]

#zadanie 5
#Połącz kolumnami macierz ma1 i macierz ma3 tworząc nowy obiekt ma4

ma4 = cbind(ma1, ma3)
ma4

#zadanie 6
#Stwórz nową ramkę danych, ra1, która składa się z dwóch kolumn i trzech wierszy.
#Pierwsza kolumna data zawiera datę z dziś, wczoraj i przedwczoraj, a kolumna
#miasto zawiera nazwę miasta w którym się właśnie znajdujesz.

ra1 = data.frame(data = c("23.04.19", "22.04.19", "21.04.19"),
                 miasto = "Poznan") 
ra1

#zadanie 7
#Stwórz nową ramkę danych, ra2, która również składa się z dwóch kolumn
#i trzech wierszy. Kolumna tmin zawiera wartości 5.3, 4.6, 2.9, a kolumna
#tmax zawiera wartości 11.1, 14.6, 9.

ra2 = data.frame(tmin = c(5.3, 4.6, 2.9),
                 tmax = c(11.1, 14.6, 9))
ra2

#zadanie 8
#Połącz dwie stworzone ramki danych ra1 i ra2 tworząc obiekt ra3. Używając
#obiektu ra3 wylicz średnią temperaturę dla każdego wiersza i wpisz ją w nową
#kolumnę tmean.

ra3 = cbind(ra1,ra2,tmean)
ra3

tmin = c(5.3, 4.6, 2.9)
tmax = c(11.1, 14.6, 9)

tmean = (tmin+tmax)/2
tmean
class(tmean)
tmean=as.data.frame(tmean)
tmean
class(tmean)
ra3

#zadanie 9
#Zmień nazwę drugiej kolumny w obiekcie ra3 na "tmaks", a trzeciej na "tsr".

colnames(ra3) = c("data", "miasto", "tmin", "tmaks", "tsr")
ra3

#zadanie 10
#Wyświetl tylko te daty dla których średnia temperatura była wyższa niż 8.

ra3[ra3$tsr>8,c(1,5)]
class(ra3)

#zadanie 11
#Stwórz nową listę, li1, która zawiera trzy elementy. Pierwszy element to
#wektor liczb od 10 do 0, drugi element to obiekt ma4, a trzeci element to
#obiekt ra3.

li1 = list(c(10:0),
           ma4,
           ra3)
li1

#zadanie 12
#Wydziel z tej listy pierwszy element i nazwij go wektor_l.

wektor_1 = li1[c(1)]
wektor_1

#zadanie 13
#Wylicz średnią wartość z kolumny "tsr" z trzeciego elementu listy.

ra3
tsr
srednia_tsr=mean(li1[[3]]$tsr)
srednia_tsr

#zadanie 14
#Zamień obiekt ramka1 utworzony w tym rozdziale na macierz.
#Co jest efektem zamiany klasy?

ra1 = as.matrix(ra1)
ra1

class(ra1)




