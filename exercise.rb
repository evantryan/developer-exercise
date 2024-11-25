class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # regex will leave punctuation alone by replacing in place
    result = str.gsub(/\b\w{5,}\b/) do |match|
      case match
      when /^[A-Z]/         # word is upper case
        "Marklar"
      else                  # word is lowercase
        "marklar"
      end
    end
    return result
  end

  def self.fibonacci(term)
    # Return fibonacci value at term index
    return term if term <= 1
    fibonacci(term - 1) + fibonacci(term - 2)
  end

  def self.fibonacci_list(term_count)
  # Return the fibonacci sequence up to the provided term count
    fib_list = []
    term_count.times do |i|
      fib_list << self.fibonacci(i)
    end
    return fib_list
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # list comprehension for sum all even numbers
    even_sum = self.fibonacci_list(nth).select { |n| n.even? }.sum
    return even_sum
  end
end
