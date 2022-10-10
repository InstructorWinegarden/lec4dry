min(1, 4, 0)

min(20/19, pi / 3, 1.2)

#question mark in front of fn gives you docs
?min

add_numbers <- function(a, b) {
  answer = a + b
  return(answer)
}

add_numbers(7, 9)

num_new <- add_numbers(50, 47)

#find circumference of circle based on diameter
circumference_from_diameter <- function(diameter) {
  circumference <- diameter * pi
  return(circumference)
}
#when you create variable inside a function they are temp,
#don't show up in global
circumference_from_diameter(2)

my_circ <- circumference_from_diameter(2)

#arrow vs equals sign
#https://stackoverflow.com/questions/1741820/what-are-the-differences-between-and-assignment-operators

#function contradict
#input: some text: statement
#output: "statement," the instructor said incorrectly.

text <- "a piece of text"
text2 <- "a piece of \"text\" with quotes"

paste("a", "set", "of", "words")
paste0("a", "set", "of", "words")

contradict <- function(statement) {
  contradiction <- paste0("\"", statement, "\" the instructor said incorrectly")
}

contradict <- function(statement) {
  contradiction <- paste0("\"", 
                       statement, 
                       ",\" the instructor said incorrectly"
                       )
  contradiction
}

print(contradict("I am not so bad at instructing"))

con1 <- contradict("I am not so bad at instructing")
con1
print(con1)
typeof(con1)
noquote(con1)
?noquote
#escape characters for quotes
#https://faculty.nps.edu/sebuttre/home/R/text.html

####################PT2################
#debugging
#text <- "hello sup
#a <- 1+ 1
#val <- min(1, 3

#try to close stuff ) } " ' ""

#val <- min(1, 3

#show not closing things properly again
fn1 <- function(a) {
  result <- a * 2
  return(result)
  
}

#use a debug demo
#general quadratic equation: ax^2 + bx + c = 0
#solve for x
# x = -b plus or minus the square root of b^2 - 4ac
# all over 2a
quadratic_formula <- function(a, b, c) {
  temp1 <- -b / (2 * a)
  temp2 <- sqrt(b^2 - 4 * a * c) / (2 * a)
  val1 <- temp1 + temp2
  val2 <- temp1 - temp2
  answer <- c(val1, val2)
  return(answer)
}
quadratic_formula <- function(a, b, c) {
  print(paste("start of function", a, b, c))
  temp1 <- -b / (2 * a)
  print(paste("temp1 =", temp1))
  temp2 <- sqrt(b^2 - 4 * a * c) / (2 * a)
  print(paste("temp2 =", temp2))
  
  print("start +/- here")
  val1 <- temp1 + temp2
  val2 <- temp1 - temp2
  
  print("combine answers into vector")
  answer <- c(val1, val2)
  return(answer)
}
#try it out, this should break
quadratic_formula(1, 0, 1)
#this will work
quadratic_formula(1, 2, 1)
sqrt(-4)

#show line by line testing/debugging
quadratic_formula <- function(a, b, c) {
  #temporarily init values, remove l8r
  a <- 1
  b <- 0
  c <- 1
  #c <- -1
  temp1 <- -b / (2 * a)
  temp2 <- sqrt(b^2 - 4 * a * c) / (2 * a)
  val1 <- temp1 + temp2
  val2 <- temp1 - temp2
  answer <- c(val1, val2)
  
  return(answer) #return only works inside of fn
}

#LINTING making sure the computer will understand your code
#STYLE making sure a human will understand your code
#I INSTALL PACKAGES IN THE CONSOLE (R STUDIO)
#type this into console. QUOTES ARE IMPORTANT
#install.packages("lintr")
#install.packages("styler")
#THEN I GO PUT library(lintr)
#library(styler)
#AT TOP OF FILE THEN RUN EACH OF THOSE LINES
#then! go to session -> set working directory
#style_file("lec4dryrunv1.R")
#lint("lec4dryrunv1.R")

# If/Else
coffee_price <- 5
my_money <- 5
if(my_money >= coffee_price) {
  print("I do have enough!")
}else{
  print("I don't have enough :(")
}

#let us make this into a function
buy_coffee <- function(money) {
  coffee_price <- 5
  change <- money - coffee_price
  if(money >= coffee_price) {
    print("I do have enough!")
  }else{
    print("I don't have enough :(")
  }
  print("your change:")
  return(change)
}
buy_coffee(6)
