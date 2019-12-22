# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

# 1) find all factors of bigNumber, put in array
# 2) check primeness of each number in array
# 3) find the largest one



bigNumber = 600851475143
factors = []

def findOtherFactors(number)
    dividing = 2
    factors = []
    while  dividing <= number
        if number % dividing == 0
            factors.push dividing
            number /= dividing
        else dividing += 1
        end
    end
    puts factors
end

findOtherFactors(bigNumber)