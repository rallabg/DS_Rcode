#airquality = read.csv('path/airquality.csv', header = TRUE, sep=",")

airquality <- datasets::airquality
## Top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)
##Columns
airquality[,c(1,2)]

df<-airquality[,-6]
head(df,10)

summary(airquality[,1])

airquality$Temp
summary(airquality$Ozone)

summary(airquality)

#############
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type="p")

plot(airquality)

##points and lines
plot(airquality$Wind, xlab='Ozone Concentration', ylab='No. of Instances', main='Ozone levels in NY City', col='blue')

## Horizontal bar plot
barplot(airquality$Ozone, main='Ozone Concentration in Air', ylab='Ozone levels', col='green', horiz=F, axes = T)

##Histogram

hist(airquality$Temp)
hist(airquality$Temp, main='Solar Radiation values in air', xlab='Solar Rad.', col='blue')

## Single box plot

boxplot(airquality$Wind, main = "BoxPlot")

boxplot.stats(airquality$Wind)$out


### Multiple box plots

boxplot(airquality, main='Multiple')

boxplot(airquality[,1:4])

boxplot(airquality[,1:2], main='Ozone, Solar.R')

par(mfrow=c(3,3), mar=c(2,5,2,1), las=0, bty="o")

plot(airquality$Ozone, main="Ozone")
plot(airquality$Ozone, airquality$Wind, main="Ozone vs Wind")
plot(airquality$Solar.R, main="Solar.R")
plot(airquality$Wind, main="Wind")
plot(airquality$Temp, main="Temp in Line format", type = "l")
hist(airquality$Solar.R)
boxplot(airquality$Ozone, main="Ozone Boxplot")
boxplot(airquality[,0:4], main="Multiple Boxplots")
boxplot(airquality$Solar.R, main="Solar.R Boxplot")














