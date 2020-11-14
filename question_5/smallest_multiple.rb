# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def findPrimeFactorsofaNumber(number)
    listofprimefactors = []
    possiblePrime = 2
    while number > 1 
      if number % possiblePrime == 0
        number /= possiblePrime
        listofprimefactors.push possiblePrime
      elsif possiblePrime < 3
        possiblePrime += 1
      else
        possiblePrime += 2
      end
    end
    return listofprimefactors
  end
  
  def findLCM(start,finish)
    if start <= 1
      start = 2
    end
    lcm = 1
    start.upto(finish) do |number|
      primeFactors = findPrimeFactorsofaNumber(number).reverse
      while lcm % number != 0
        lcm *= primeFactors.pop
      end
    end
    return lcm
  end

  puts findLCM(1,10)
