m <- matrix(1:6,2,3)
n <- matrix(1:10,2)
x <-4L
dat <-read.csv("hw1_data.csv")
dat[1:2,]
nrow(dat)
dat[152:153,]
dat$Ozone[47]
sum(is.na(dat$Ozone))

a <- is.na(dat$Ozone)

mean(dat$Ozone, na.rm = TRUE)

mean(dat[which(dat$Month==6),]$Temp)

mean(dat[which(dat$Ozone >31 & dat$Temp > 90),]$Solar.R)

b <- 

max(dat[which(dat$Month==5),]$Ozone, na.rm = TRUE)