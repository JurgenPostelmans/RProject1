v <- 2 + 2

3 -> w

2 + 2

plot(CO2)

installed.packages()

#install.packages("dplyr")

baseUrl <- "http://samplecsvs.s3.amazonaws.com/Sacramentorealestatetransactions.csv"

library(data.table)
Sacramentorealestatetransactions <- fread(baseUrl)

show(Sacramentorealestatetransactions)

View(Sacramentorealestatetransactions)

copy <- edit(Sacramentorealestatetransactions)

help(plot)

dose <- c(20,30,40,46,60)
drugA <- c(16, 20, 27, 40, 60)
drugB <- c(15, 18, 25, 31, 40)

# default is a scatter plot
plot(dose, drugA)
# default is a scatter plot, we want both points and lines
plot(dose, drugA, type = "b")

opar <- par(no.readonly = TRUE)
par(lty = 2, pch=7)
plot(dose,drugA, type="b",main="Drug A")
par(opar)

pie(dose)

dev.off()