
numbers <- runif(10000, 0, 100)

byTen <- seq(from=0,to=100,by=10)

#place each item in an interval
cut(numbers, byTen)

#generates a frequency table.
table(cut(numbers, byTen))

#drop the first element
#paste concatenates strings
byTen[-1]

#drop the last elements
head(byTen, -1)

df <- as.data.frame(table(cut(numbers, byTen)))

labels <- paste(head(byTen, -1), byTen[-1], sep = "-")

df <- cbind(df, labels)
#drop the first column
df <- df[, -1]

hist(numbers)

hist(numbers, breaks = seq(from = 0, to = 100, by = 10), main = "sample histogram", xlab = "Bins", col = "gray", labels=TRUE)

#no default labels
h <- hist(numbers, breaks = seq(from = 0, to = 100, by = 10), main = "sample histogram", xlab = "Bins", col = "gray", labels = TRUE, xaxt="n")
axis(1, h$mids, labels = labels, tick = FALSE, cex.axis = 0.9, las=2)

#add a set of tick marks to the plot
rug(seq(from = 0, to = 100, by = 10), col = 2, lwd = 2.5)
