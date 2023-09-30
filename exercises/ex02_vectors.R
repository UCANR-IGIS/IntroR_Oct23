#############################################
## VECTORS
#############################################

# Let's make some vectors!

a = 1:10
a

b = 30:1
b

e = c(100, 500)
e

# What happens if there isn't enough room on the console?

f = 20:150
f

## What does head() do?

head(f)

# How many elements in a vector?

length(f)

#############################################
## VECTOR ARITHMETIC
#############################################

a + 50

a + b

a ^ 2

b / 2

# What happens when you add two vectors of different length?

a
e
a + e

##############################################
## CHALLENGE QUESTIONS
##############################################

# Create a vector called `x` that has the numbers 11 to 20

# Take the square of x

# Take the square root of x

###############################################
# Character vectors
###############################################

flv = c("vanilla", "chocolate", "strawberry", "lemon", "butter pecan")
flv

#############################################
## SUMMARY STATS
#############################################

g = rnorm(500)

mean(g)

sd(g)

quantile(g)

#############################################
## ARE LOGICAL EXPRESSIONS VECTORIZED?
#############################################

my_nums = sample(1:10, 50, replace = TRUE)
my_nums

my_nums > 5

my_nums == 5

# How many numbers are less than 3?

my_nums < 3

sum(my_nums < 3)

## Saving the results of Logical tests 

small_num_yn = (my_nums <= 3)
small_num_yn

## MAKING A FREQUENCY TABLE

## For discrete values, you can use a frequency table

my_months = sample(month.abb, 50, replace = TRUE)
my_months

table(my_months)

#############################################
## SUBSETTING VECTORS
#############################################

var = 1:10

var

## Get the 5th element

var[5]

## Get the 5th through 7th elements

var[5:7]

## Get the 7th thru 5th elements

var[7:5]

## You can also pass logical values
var >= 8

var[ var >= 8 ]

## Return elements of var that are divisible by 3:

var[var %% 3 == 0]

#############################################
## CHALLENGE QUESTIONS
#############################################

# Generate a vector of integers from 10 to 20, and save it to an object x1

# Take the square x1 and save it as x2

# How many of the values of x2 are less than 200?


#############################################
## Basic Plotting

x = rnorm(500)

hist(x)

boxplot(x)

plot(x)

y = rnorm(500)

plot(x, y)

