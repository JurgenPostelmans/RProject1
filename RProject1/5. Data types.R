
# number and integer
number <- 4.2

class(number)

int <- 1L

class(number)

int <- as.integer(4.2)

int

no_int <- as.integer("abc")

no_int

# boolean

5 < 7

5 < 7 & NA

5 < 7 | NA

flag = TRUE

class(flag)

#Character

category <- "Bikes"

class(category)

#error
fullname <- "Jurgen" + " " + "Postelmans"

fullname <- paste("Jurgen","Postelmans")
fullname <- paste("Jurgen", "Postelmans", sep = "|")

fullname

somestring <- sprintf("Today is %s", date())

somestring
