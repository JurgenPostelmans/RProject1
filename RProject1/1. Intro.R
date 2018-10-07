

a <- c(1,2,5)
b <- 1
c <- 1:100
d <- rnorm(10, 100, sd = 1)
e <- c("Bikes", "Clothing")

sessionInfo()

ls() # List all Objects in the current environment  

setwd("c:/deleteme") # change the current working directory
getwd() # print the current working directory

# view and set options for the session
help(options) # learn about available options
options() # view current option settings
options(digits = 3) # number of digits to print on output

# save your command history
savehistory(file = "RCourse.history")

# reload your command history 
loadhistory(file = "RCourse.history")

# save all objects the workspace to the file .RData in the cwd
save.image(file = "Variables.RData")
save(a,b,file = "aAndbVariable.RData")

history()

rm(a,b,c,d,e)

load(file = "Variables.RData")
load(file = "aAndbVariable.RData")

require(ggplot2) # Warning if package is not installed
library(ggplot2) # Error if package is not installed

installed.packages()

install.packages(c("ggplot2"))

.libPaths()

library() #outputs all installed packages

search() # outputs all loaded packages

source("./Intro.R")

q()
