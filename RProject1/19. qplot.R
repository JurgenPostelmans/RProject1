library(ggplot2)

?trees

qplot(trees$Volume, trees$Girth)

qplot(trees$Volume, geom = "density")