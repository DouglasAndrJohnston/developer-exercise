class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    output = str.gsub(/[a-z]+[a-z,A-Z]{4,}/, "marklar")
    output = output.gsub(/[A-Z]+[a-z,A-Z]{4,}/, "Marklar")
    return output
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    #initial values: first two fibonacci numbers are 1 and 1
    n = nth.to_i
    total = 0
    first = 1
    last = 1
    count = 2
    placeholder = 1
    #evaluate each fibonacci number, check if it is divisible by two, and if so add it to the total
    while count < n
      placeholder = last
      last = last + first
      first = placeholder
      count = count + 1
      if last % 2 == 0
        total = total + last
      end
    end
    return total
  end

end
