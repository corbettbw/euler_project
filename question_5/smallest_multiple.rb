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
  
  def findFactorsOfLeastCommonMultipleOfASequence(greatestNumberInASequence)
    factorsOfLeastCommonMultiple = []
    greatestNumberInASequence.downto(2) do |i|
      primeFactors = findPrimeFactorsofaNumber(i)
      primeFactors.uniq.each do |u|
        while factorsOfLeastCommonMultiple.count(u) < primeFactors.count(u)
          factorsOfLeastCommonMultiple.push u
        end
      end
    end
    return factorsOfLeastCommonMultiple.sort
  end
  
  def findLeastCommonMultipleOfASequence(greatestNumberInASequence)
    product = 1
    findFactorsOfLeastCommonMultipleOfASequence(greatestNumberInASequence).each do |factor|
      product *= factor
    end
    return product
  end
  
  findLeastCommonMultipleOfASequence(1000)
  
  On Mon, Jan 20, 2020 at 3:26 PM Corbett W <corbettbw@gmail.com> wrote:
  def primeFactorsofaNumber(number)
    listofprimefactors = []
    possiblePrime = 2
    while number > 1 
      if number % possiblePrime == 0
        number /= possiblePrime
        listofprimefactors.push possiblePrime
      elsif number % possiblePrime != 0
        possiblePrime += 1
      end
    end
    return listofprimefactors
  end
  
  def findPrimeFactorsOfLeastCommonMultipleInASequence(greatestNumberInASequence)
    factorsOfLowestCommonMultiple = []
    greatestNumberInASequence.downto(2) do |i|
      primeFactors = primeFactorsofaNumber(i)
      primeFactors.uniq.each do |u|
        while factorsOfLowestCommonMultiple.count(u) < primeFactors.count(u)
          factorsOfLowestCommonMultiple.push u
        end
      end
    end
    return factorsOfLowestCommonMultiple
  end
  
  product = 1
  
  factors = findPrimeFactorsOfLeastCommonMultipleInASequence(20).sort!
  factors.each do |n| 
    puts n
    product *= n
  end
  puts product