

m <- matrix(data = seq(from = 1, to = 100), nrow = 10, ncol = 10, byrow = FALSE)

rownames(m) <- c(paste("Day", 1:10))
colnames(m) <- c(paste0("C", 1:10))

class(m)
head(m, 10)

#simple for loop
for (row in 1:10) {
    print( max(m[row,]))
}

#apply works on matrix, array and data.frame (if columns have compatible data types)
#find the max per row (MARGIN=1)... 
#returns an integer vector
apply(m, MARGIN = 1, FUN = max)

#does also work on a data frame but it depends on the column types really...
df <- as.data.frame(m)

head(df, 10)
class(df)

apply(df, MARGIN = 1, FUN = max)

#but...
df$ExtraCol = rownames(df)
head(df, 10)

#cannot sum on character column...
apply(df, MARGIN = 1, FUN = sum)
#remove the column
apply(df[, - c(11)], MARGIN = 1, FUN = sum)

#let's introduce an NA
df[1, 1] <- NA
head(df, 1)

#remove the NA
apply(df[, - c(11)], MARGIN = 1, FUN = sum, na.rm = TRUE)

#x is the input vector
proportion <- function(x) {
    x / max(x)
}

df[1, 1] <- 1;
df$ExtraCol <- NULL
head(df, 10)

#Returns a matrix and not a vector!
apply(df, MARGIN = 2, FUN = proportion)

#lapply applies the function to each of the columns !! No need to specify MARGIN=2
lapply(df, FUN = sum)

#sapply is a user-friendly version and wrapper of lapply by default returning a vector, matrix
sapply(df, FUN = sum)

apply(df, MARGIN = 2, FUN = sum)

PatientID <- 1:30
Age <- runif(30, 18, 65)
Treatment <- sample(c("Treatmenet A", "Treatmenet B", "Treatmenet C"), 30, replace = TRUE)

mean(Age)

#Average per Treatment

tapply(X = Age, INDEX = Treatment, FUN = mean)


df <- data.frame(PatientID, Age, Treatment)

tapply(X = df$Age, INDEX = df$Treatment, FUN = mean)