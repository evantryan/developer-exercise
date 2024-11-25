class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    # split on spaces and store to array
    marklared_word_list = []
    word_list = str.split
    # loop through word list to mutate as needed
    word_list.each do |word|
      if word.length > 4:
        #if capitalized, maintain caps
        puts word
      end
    end 
  end

  def self.fibonacci_list(term_count)
    # return a the fibonacci list at the length of `term_count`
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # list comprehension for sum of all even numbers
  end

end
