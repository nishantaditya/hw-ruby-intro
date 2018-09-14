# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum_of_numbers = arr.inject(0, :+)
end

def max_2_sum array
	len = array.length
	if len ==0
	  return 0
	end
	if(len ==1)
	  return array.at(0)
	else
	  d = array.sort
	  c = d.at(len.send(:+, -2)) + d.at(len.send(:+, -1))
	  return c 
	end
end

def sum_to_n? array, n
	array.combination(2).any? { |a, b| a + b == n }
end


# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty?
    return false
  end
  c = s[0].upcase
  if(c>='A' && c <='Z')
    if(/[^AEIOU]/ =~ c)
      return true
    end
  end
  return false
end

def binary_multiple_of_4? s
	if (s.to_s =~ /\b[01]+\b/ && s.to_i % 4 == 0)
		return true
	else
		return false
	end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    "$%.2f" % @price
  end
# YOUR CODE HERE
end