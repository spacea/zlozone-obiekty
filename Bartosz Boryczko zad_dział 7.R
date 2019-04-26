#zad1#
ma1 = matrix(0:11,nrow = 3,ncol = 4)
ma1
ma2 = matrix(2,nrow=3,ncol=4)
ma2
ma3 = matrix((sample=1:3), nrow=3, ncol=4)
ma3
#zad2#
ma1+ma2
ma1*ma2
ma1-ma2
ma1/ma2
ma1+ma3
ma1-ma3
ma1*ma3
ma1/ma3
#zad3#
ma1[c(1),c(4)]
#zad4#
ma3[ma3>2]
(ma3>2)
#zad5#
ma4=cbind(ma1,ma3)
ma4
#zad6#
ra1=data.frame(data = c("14.04.19", "15.04.19", "16.04.19"),
               miasto = c("Poznan"))
ra1
#zad7#
ra2=data.frame(tmin=c(5.3, 4.6, 2.9),
               tmax=c(11.1, 14.6, 9))
ra2
tmin=c(5.3, 4.6, 2.9)
tmax=c(11.1, 14.6, 9)
#zad8#
ra3=cbind(ra1,ra2)
ra3
tmean=(tmin+tmax)/2
tmean
tmean=data.frame(tmean)
tmean
ra3=cbind(ra1,ra2,tmean)
ra3
#zad9#
tmax=data.frame(tmax)
tmax
colnames(ra3)=c("data","miasto","tmin","tmaks","tsr")
ra3
#zad10#
ra3[,c(1,5)]
ra3[ra3$tsr>8,c(1,5)]
#zad11#
li1=list(c(10:0),ma4, ra3)
li1
#zad12#
li1[c(1)]
wektor_1=c(li1[c(1)])
wektor_1
#zad13#
srednia_tsr=mean(li1[[3]]$tsr)
srednia_tsr
#zad14#
ra1=as.matrix(ra1)
ra1
class(ra1)
