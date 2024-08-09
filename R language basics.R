#arithmetic operations

77 + 65
100 - 54
98 * 76
7 / 7
18 %% 7   # Modulus operator
(500 * 2) + (80 / 2)
500 * (2 + 1)
8^2       # Exponentiation
8^4       # Exponentiation
(876^4) + (54 * 5)



#R class and type

num <- "kk"
typeof(num)
class(num)

character <- "deadpool"
typeof(character)
class(character)

ch <- "deadpool"
typeof(ch)
class(ch)

r <- 1 + 2i
typeof(r)
class(r)
print(r)






#string operations

print(paste0('hello', 'world'))
print(paste('hello', 'world'))

print(paste0('dead', 'pool'))
print(paste('hello', 'world'))

sno <- 107
sname <- "devil"
sdept <- "AI&DS"
print(paste(sno, sname, sdept, sep = '_'))

sno <- 107
sname <- "devil"
sdept <- "AI&DS"
print(paste0(sno, sname, sdept, sep = '/'))

a <- "devildhinesh"
b <- 8
print(paste(a, b, sep = '_'))

sno <- 107
sname <- "devil"
sdept <- "AI&DS"
print(paste(sno, sname, sdept, sep = '_'))

sprintf("%s is %f feet tall", sname, 5.4)

sno <- 107
sname <- "devil"
sdept <- "AI&DS"
print(paste(sno, sname, sdept, sep = '_'))

sprintf("%s is %f feet tall", sname, 5.497)






#loops

for (i in 1:5) {
  print(i)
}





#vectors and dta types

vec4 <- c(54, TRUE, "uu")
vec4
class(vec4)  # Should be character, since all elements are coerced to the same type.

vec6 <- c(5:4, TRUE)
vec6
typeof(vec6)  # Integer
class(vec6)   # Numeric

vec4 <- c(54, TRUE, 1 + 2i)
vec4
typeof(vec4)  # Complex (since `1 + 2i` is a complex number)






#sequences and subsettings

vec7 <- 12:20
vec7

vec7[6:8]

vec8 <- seq(5, 20)
vec8

vec9 <- 8:25
vec9
vec9[6]

vec7 <- seq(20, 30)
vec7

vec7 <- seq(100, 500)
vec7
vec7[5:9]

odd_value <- seq(8, 100, 2)
odd_value

even_value <- seq(2, 6, 8)
even_value






#plotting

x <- 1:100
y <- x^20
plot(x, y, main = "dk", xlab = "xaxis", ylab = "yaxis", pch = 10, col = 'green')

vec10 <- seq(from = 21, by = 4, length.out = 6)
vec10

vec10 <- seq(from = 1, by = 1, length.out = 20)
vec10

temperature <- c(72, 71, 68, 73, 69, 75, 71)
names(temperature) <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun')
temperature

temperature <- c(87, 98, 76, 45, 34, 90, 67)
names(temperature) <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun')
temperature

days <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun')
temperature1 <- c(40, 45, 60, 30, 36, 12, 29)

v1 <- c(3, 1, 4)
v2 <- c(5, 6, 7)
v1 + v2
v1 - v1
v1 * v2
v1 / v2

sum(v1)  # Add the values in a vector
sd(v1)   # Finds the standard deviation
var(v1)  # To display the variance
prod(v1) # Give the product of the vector values
max(v1)  # Return the maximum value
min(v1)  # Return the minimum value





#metrices and dtaframes

mat1 <- matrix(1:9, 3, 3)
mat1

mat2 <- matrix(1:9, 3, 3)
mat2

mat3 <- matrix(1:9, nrow = 3, byrow = TRUE)
mat3

mat3 <- matrix(1:9, 3, 3, byrow = TRUE)
mat3

stock1 <- c(450, 451, 452, 445, 468)
stock2 <- c(230, 231, 232, 236, 238)
stock3 <- c(450, 451, 452, 454, 468)
stock4 <- c(230, 231, 232, 236, 228)

stock <- c(stock1, stock2, stock3, stock4)
stock

stock <- matrix(stock, nrow = 4, byrow = TRUE)
stock

products <- c('samsung', 'vivo', 'Mi', 'iphone', 'jio')
st_stocks <- c('shop1', 'shop2', 'shop3', 'shop4')

colnames(stock) <- products
rownames(stock) <- st_stocks

stock

colSums(stock)
rowSums(stock)
rowMeans(stock)

shop5 <- c(150, 151, 149, 120, 114)
total_stock <- rbind(stock, shop5)
total_stock

avg <- rowMeans(total_stock)
avg

total_stock <- cbind(total_stock, avg)
total_stock





#plotting with pie charts and barcharts

install.packages("plotrix")
library(plotrix)

labels <- c("car", "bike", "bus", "train", "ship")
values <- c(10, 20, 30, 40, 50)
colors <- c("red", "green", "yellow", "blue", "purple")

pie(values, init.angle = 50, col = colors, main = "OMNITRIX", cex.main = 3, labels = labels)

percentages <- round(values / sum(values) * 100)
labels_with_percentages <- paste(labels, percentages, "%", sep = " ")
pie3D(values, labels = labels_with_percentages, radius = 1.3, col = colors, main = "Pie Chart with Percentages", explode = 0.2)
legend("topright", labels, fill = colors)

x <- c("PK", "DK", "TP", "KP")
y <- c(22, 41, 26, 38)
colors <- c("red", "green", "yellow", "blue")
barplot(y, names.arg = x, col = colors, density = 500, horiz = TRUE, width = c(22, 41, 26, 38))
legend("bottom", x, fill = colors)






#data handling and manipulation

data()
head(iris)
View(iris)
summary(iris)
str(iris)

datas <- read.csv("C:/Users/admin/Downloads/Hospital+Patient+Records/patients.csv")
head(datas)
tail(datas)
View(datas)
summary(datas)
str(datas)
colnames(datas)

plot(datas)
boxplot(datas[7])

days <- c('mon', 'tue', 'wed', 'thu', 'fri')
temp <- c(25.6, 30.1, 45, 37.3, 41.2)
rain <- c(TRUE, TRUE, FALSE, FALSE, TRUE)

df <- data.frame(days, temp, rain)
print(df)
summary(df)
str(df)

df[2,]
df[, 3]

df[,'temp']
df[2:4, c('days', 'temp')]

df$days
df$rain
df['rain']
df['temp']
subset(df, subset = rain == TRUE)
subset(df, subset = temp > 35)

sorted_temp <- order(df$temp)
df_sorted <- df[sorted_temp, ]
print(df_sorted)

desc_temp <- order(-df$temp)
df_desc_sorted <- df[desc_temp, ]
print(df_desc_sorted)

sort_temp <- order(df$temp)
df[sort_temp, ]

authors






#dataframe and merging

# Create data frames
authors <- data.frame(
  surname = c("tukey", "venables", "tierney", "ripley", "mcneil"),
  nationality = c("uk", "india", "csk", "rcb", "mi"),
  deceased = c("yes", rep("no", 4))
)

books <- data.frame(
  name = I(c("tukey", "venables", "tierney", "ripley", "ripley", "mcneil", "R core")),
  title = c(
    "exploratory data analysis",
    "modern applied statistics...",
    "lisp-stat",
    "interactive data analysis",
    "an introduction to r",
    "gdgdg",
    "dhfhf"
  ),
  other_author = c(NA, "ripley", NA, NA, NA, NA, "venables & smith")
)

# Display data frames
print(authors)
print(books)
View(books)

# Merge data frames
m1 <- merge(authors, books, by.x = "surname", by.y = "name")
print(m1)








#lists and list operation

# Create lists
list1 <- list(
  x = c(10, 20, 30),
  y = c("a", "b", "c"),
  z = c(TRUE, FALSE)
)
print(list1)

list2 <- list(
  vec = seq(1:10),
  mat = matrix(1:9, 3, 3),
  nested_list = list(a = 10, b = 20)
)
print(list2)
print(is.recursive(list2))

# Convert vector to list and back
price <- c(10, 20, 30)
pricelist <- as.list(price)
print(pricelist)
newprice <- unlist(pricelist)
print(newprice)









#functions

# Function to print "hello world"
hello_world <- function() {
  print('hello world in R!')
}
hello_world()

# Function to concatenate and print strings
hello_name <- function(f, p, l) {
  print(paste0(f, p, l))
}
hello_name('HARI', '-', 'SIMBA')

# Function to add two numbers
add_num <- function(num1, num2) {
  print(num1 + num2)
}
add_num(30, 50)

# Function to greet with a default name
hello_name <- function(name = 'SIMBA') {
  print(paste('hello', name))
}
hello_name()
hello_name('samantha')

# Function to return full name
full_name <- function(name = 'hari', title = 'pk') {
  return(paste(name, title))
}
print(full_name())

# Function to read numbers and add them
add_num <- function() {
  num1 <- as.numeric(readline(prompt = "enter the number1: "))
  num2 <- as.numeric(readline(prompt = "enter the number2: "))
  print(paste("total value:", num1 + num2))
}
add_num()




#01BUSINESS UNDERSTANDING
#02DATA MINING
#03DATA CLEANING
#04DATA EXPLORATION
#05FEATURE ENGINEERING
#06PROTECTIVE MODELLING
#07DATA VISUALIZATION



















