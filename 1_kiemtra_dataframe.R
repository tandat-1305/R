getwd()
setwd('C:\\Users\\DELL\\Desktop\\R-studio\\C1')
getwd()
squid <-read.table(file='squid.txt', header = TRUE)
squid
squidGSI <- read.table(file='squidGSI.txt', header = TRUE)
squidGSI
#Kiem tra data.frame co nhung cot nao?
names(squid)
#ham kiem tra trang thai cua cac bien trong data.frame
str(squid)
#Nhap tham so cho cac ham
M1 <- lm(GSI ~ factor(Location)+factor(Year), data = squid)
M1
#data.frame
squid$GSI
squid[,6]
#ham unique dua ra cac gia tri duy nhat trong cot so lieu
unique(squid$Sex)
#Chi lay nhung dong nao co gia tri Sex=1?
sel <- squid$Sex==1
squidm <- squid[sel,]
squidm

squidmale <- squid[squid$Sex==1,]
squidmale

#lay ra nhung don o location tu 1 den 3
  #cach1
lc <- squid[squid$Location==1|squid$Location==2|squid$Location==3,]
lc
  #cach2
lc2 <- squid[squid$Location!=4,]
lc2
lc3 <- squid[squid$Location<=4,]
lc3
#lay ra nhung dong co location=1; sex=1; year=4

#lay ra nhung dong co (Location=1 va Sex =1) hoac (Sex=2 va year=2)