# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  s = 0
  for x in arr do
    s += x
  end
  return s
end

def max_2_sum arr
  m1 = 0
  m2 = 0
  m1c = false
  m2c = false
  for x in arr
    m1 = x and m1c = true and next unless m1c == true
    m2 = x and m2c = true and next unless m2c == true
  
    m2 = m1 and m1 = x and next if x >= m1
    m2 = x and next if x >= m2 or m2 == 0
  end
  return (m1 + m2)
end

def sum_to_n? arr, n
  for x in arr do
    for y in arr do
      return true if x + y == n unless x == y
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  return false if s.length == 0
  return false if (/[A-Z]/.match(s.upcase[0]) == nil)
  return true if (/[AEIOU]/.match(s.upcase[0]) == nil)
  return false
end

def binary_multiple_of_4? s
  return false if s.length == 0
  return false if (/[^01]/.match(s) != nil)
  return true if ((s.to_i(2) % 4) == 0) else return false
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    raise ArgumentError, 'Argument isbn must be a string' unless isbn.is_a? String
    raise ArgumentError, 'Argument isbn is empty' unless isbn.length > 0
    raise ArgumentError, 'Argument price must be a float' unless price.is_a? Float
    raise ArgumentError, 'Argument price must be positive' unless price > 0.0
    
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    x = price.round(2).to_s()
    puts "$" + x
  end
end