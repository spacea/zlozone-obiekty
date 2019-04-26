# Zadanie 1
ma1 = matrix(0:11, nrow = 3, ncol = 4)
ma2 = matrix(2, nrow = 3, ncol = 4)
ma3 = matrix(sample(1:3), nrow = 3, ncol = 4)
ma1
ma2
ma3

# Zadanie 2
ma1+ma2
ma1-ma2
ma1*ma2
ma1/ma2
ma1+ma3
ma1-ma3
ma1*ma3
ma1/ma3

# Zadanie 3
ma1[c(1), c(4)]

# Zadanie 4
ma3>2

# Zadanie 5
ma4 = cbind(ma1,ma3)
ma4

# Zadanie 6
date1 = Sys.Date()
date2 = Sys.Date()-1
date3 = Sys.Date()-2
ra1 = data.frame(data = c(date1, date2, date3),
                 miasto = c("Poznań"),
                 stringsAsFactors = FALSE)
ra1

# Zadanie 7
ra2 = data.frame(tmin = c(5.3, 4.6, 2.9),
                 tmax = c(11.1, 14.6, 9),
                 stringsAsFactors = FALSE)
ra2

# Zadanie 8
tmean = ((ra2$tmin+ra2$tmax)/2)
tmean
ra3 = cbind(ra2, tmean, ra1)
ra3

# Zadanie 9
colnames(ra3) = c("tmin","tmaks", "tsr", "data", "miasto")
ra3

# Zadanie 10
ra3[ra3$tsr > 8, c(4)]

# Zadanie 11
li1 = list(c(10:0),
           ma4,
           ra3)
li1

# Zadanie 12
wektor_1 = li1[c(1)]
wektor_1

# Zadanie 13
mean(li1[[3]]$tsr)

# Zadanie 14
ramka1 = data.frame(wek_log = c(TRUE, FALSE, FALSE),
                    wek_cal = c(5L, -7L, 12L), 
                    wek_zmi = c(5.3, -7.1, 1.1), 
                    wek_zna = c("kot", "pies", "nosorożec"),
                    stringsAsFactors = FALSE)
ramka1

ramka1_z1 = as.matrix(ramka1)
ramka1_z1







