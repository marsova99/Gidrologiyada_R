png("C:/z/sath1.png", width = 12, height = 12, units = "in", res = 600)

read.csv(file="C:/Rprog/amaliy_mashg'ulotlar/1/UGAM.csv") 
          #Fayllar ichidan keraklisi shu tartibda tanlab olinadi
file1<-read.csv(file="C:/Rprog/amaliy_mashg'ulotlar/1/UGAM.csv")
          #yuqoridagidek tanlab olingan fayl qayta nomlanadi
colnames(file1) <- c("OY","KUN","H")          #fayl ustunlari nomlari kiritiladi.
plot(file1$H, col="red", xlab="T", ylab="H", type='l')  #chizma chizish uchun shunday qilib buyruq beriladi.
points(file1$H, col="blue")
title("Suv sathining yil ichida tebranish grafigi")
dev.off()
summary(file1)

read.csv(file="C:/Rprog/amaliy_mashg'ulotlar/1/yogin.csv") 
file2<-read.csv(file="C:/Rprog/amaliy_mashg'ulotlar/1/yogin.csv")
colnames(file2) <- c("oy","kun","yogin")  
summary(file2)
file2

read.csv(file="C:/Rprog/amaliy_mashg'ulotlar/1/harorat.csv") 
file3<-read.csv(file="C:/Rprog/amaliy_mashg'ulotlar/1/harorat.csv")
colnames(file3) <- c("oy","kun","harorat")  
summary(file3)

read.csv(file="C:/Rprog/amaliy_mashg'ulotlar/1/sarf.csv") 
file4<-read.csv(file="C:/Rprog/amaliy_mashg'ulotlar/1/sarf.csv")
colnames(file4) <- c("oy","kun","Q")  
summary(file4)

y1<-file1$H
y2<-file2$yogin
y3<-file3$harorat
y4<-file4$Q
x<-file1$KUN


plot.new()
grid(28,28, col="pink")
plot.window(xlim=c(0,365), ylim=c(0,350))
lines(x, y1, col="red",lwd=2)
axis(x)
axis(2,ylim=c(0,350), col.axis="red", lwd=2, ylab="", xlab="")
box()
par(new=TRUE)
plot.window(xlim=c(0,365), ylim=c(-50,100))
lines(x,y3, col="green", lwd=2)
abline(h=0, col='green', ls="--" )
axis(2, ylim=c(min(file3$harorat),max(file3$harorat)),col.axis="green", line=2)
par(new=TRUE)
plot.window(xlim=c(0,365), ylim=c(-50,200))
lines(x,y3, col="blue", lwd=2, )
axis(4, ylim=c(min=(file4$Q),max(file4$Q)), col="blue")
par(new=TRUE)
plot.window(xlim=c(0,365), ylim=c(0, 365))
plot(y2, xlim=c(0,365), ylim=c(0,365),xaxt="n", yaxt="n",lwd=1, type="h", ylab="", xlab="")
axis(4, ylim=c(0,365), col="black", lwd=2, line=2)
abline(h=0)
dev.size("cm")
title("Suv sathi kompleks grafigi", adj=0)


legend(x="topleft", y=NULL,legend=c( "H", "t","Q", "X"), 
       col=c("red","green", "blue", "black"),lwd=3,cex=0.6,lty=1)



dev.off()


head(file1)   # jadvalimizning boshlanish qismini ko'rish uchun shu kabi buyruq beriladi.
tail(file1)   #jadvalning tugash qismini ko'rish uchun, ko'p yillik ma'lumotlar bilan ishlaganda asqotadi.
file1[1] #tanlangan faylning birinchi ustunini ko'rish uchun.
file1[2]#tanlangan faylning ikkinchi qismini ko'rish uchun.
file1[1:3]#tanlangan faylning barcha ustunlarini ko'rish uchun.
file1["H"]#ustun raqami o'rniga uning nomini kiritib ham ko'rish mumkin.
summary(file1)#tanlangan faylning statistik ko'rsatkishlarini birdaniga hisoblash uchun.
mean(file1$H)#ma'lum ustunning o'rtacha qiymatni aniqlash uchun.
temp<-(file1[,"H"])#ma'lum ustunni qayta nomlash uchun.
hist(temp, col="red", xlab='OY', ylab='H')#gistogramma ko'rinishida ifodalash uchun.

#('yuqorida ko'rsatilganidek, ushbu dastur yordamida ma'lum faylni har
# "xil ko'rinishda tasvirlash hamda ushbu tasvirlarni o'zimiz istagan"
# "rangga kiritish, shuningdek har bir tasvirni alohida saqlash "
# "imkoniyatiga egamiz tasvirlar png formatda saqlanadi, bu esa"
# "rasmning sifatini o'zingiz tanlash imkonini beradi"
# "Misol uchun rasm saqlashda uni yaqinlashtirish" 
# "darajasini ham belgilash mumkin')

     
