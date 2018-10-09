
l <- list(age = 47, name = "Jurgen Postelmans", country = "Belgium", children = 1:10)

l[1]
l[2]
l[10]

# returns only the value and not the name of the element on position 1
l[[1]]
l["age"]
l$age

l$children