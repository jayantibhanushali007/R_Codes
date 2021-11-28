

#airquality = read.csv('path/airquality.csv',header=TRUE, sep=",")
airquality <- datasets::airquality

####Top 10 rows and last 10 rows
head(airquality,15)
tail(airquality,10)

######Columns
airquality[,c(1,2)]

df<-airquality[,c(-3,-6)]

summary(airquality[,1])

summary(airquality)

airquality

airquality$Wind

summary(airquality$Wind)

###########Summary of the data#########

summary(airquality)
summary(airquality$Wind) 

#####################
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind)

plot(airquality$Wind,airquality$Temp, type="b")

plot(airquality)

# points and lines 
plot(airquality$Wind, type= "l") # p: points, l: lines,b: both

plot(airquality$Wind, xlab = 'Ozone Concentration',
     ylab = 'No of Instances', main = 'Ozone levels in NY city',
     col = 'blue')



# Horizontal bar plot
barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        ylab = 'ozone levels', col= 'blue',horiz = T,axes=T)

#Histogram
hist(airquality$Temp)

barplot(airquality$Temp)

hist(airquality$Temp, 
     main = 'Solar Radiation values in air',
     xlab = 'Solar rad.', col='blue')

#Single box plot
summary(airquality$Wind)
boxplot(airquality$Wind,main="Boxplot")
boxplot.stats(airquality$Wind)



# Multiple box plots
boxplot(airquality[,1:4],main='Multiple')

#margin of the grid(mar), 
#no of rows and columns(mfrow), 
#whether a border is to be included(bty) 
#and position of the 
#labels alignment (las: 1 for horizontal, las: 0 for vertical)
#bty - box around the plot

par(mfrow=c(3,3),mar=c(2,5,2,1),  las=1, bty="n")
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")

barplot(airquality$Ozone, main = 'Ozone Concenteration in air',
        xlab = 'ozone levels', col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box plots')


##Home work
e_quakes<-datasets::quakes
sd(airquality$Ozone,na.rm = T)

#var
#skewness
#kurtosis
#Density plot









