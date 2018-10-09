
m1 <- matrix(data = 1:10, nrow = 5, ncol = 2, byrow = FALSE)
dim(m1)

m1

# retrieve the element on row,col
m1[1, 2]

nrow(m1)
ncol(m1)

rownames(m1)
rownames(m1) <- LETTERS[1:5]
rownames(m1)

colnames(m1)

