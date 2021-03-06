# When done, submit this entire file to the autograder.

# Part 1

def sum(array)
  # YOUR CODE HERE
  return array.sum
end

def max_2_sum(array)
  # YOUR CODE HERE
  if(array.length == 0)
    return 0
  elsif array.length == 1
    return array.sum
  else
    return array.sort[-2] + array.sort[-1]
  end
end

def sum_to_n?(array,n)
  # YOUR CODE HERE
  #help from https://stackoverflow.com/questions/19371442/how-to-create-a-nested-loop-with-ruby-the-right-way
  return false if array.empty?
  return true if array.empty? && n.zero?
  array.combination(2).any? {|a, b| a + b == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
   if /[aeiouAEIOU*]/.match(s[0])
     return false
   else
     return true
    end
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  begin
    Integer(s)
    return true if s.to_i % 4 == 0 
  rescue RuntimeError,ArgumentError, TypeError
    return false
  end
  
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price

  def initialize(isbn,price)
    @price = price
    @isbn = isbn
    if isbn.empty? or price <= 0
      raise ArgumentError 
    end
  end
  
  def price_as_string
    format("$%.2f", @price)
  end

end
