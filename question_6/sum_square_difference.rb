# The sum of the squares of the first ten natural numbers is,
# 1^2 + 2^2 + 3^2 +...+ 10^2 = 385

# The square of the sum of the first ten natural numbers is,
# (1 + 2 + 3 +...+ 10)^2 = 55^2 = 3025

# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640.

# Find the difference between the sum of the squares of the first 100 natural numbers and the square of the sum.

number = 100

def sumSquare(number)
    sumsquare = 0
    1.upto(number) { |number| sumsquare += number ** 2 }
    return sumsquare
end

def squareSum(number)
    sum = 0
    1.upto(number) { |number| sum += number }
    squaresum = sum ** 2
    return squaresum
end

puts squareSum(number) - sumSquare(number)