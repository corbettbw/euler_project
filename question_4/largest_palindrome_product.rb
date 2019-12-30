# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

array = []
999.downto(100) do |a|
    999.downto(100) do |b|
        c = (a * b).to_s
        if c == c.reverse
            array.push c.to_i
            break
        end
    end
end
puts array.sort.last