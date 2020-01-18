# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  #result = 0
  #arr.each{|x| result = result + x}
  #result
  arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  #result = 0
  #if arr.length == 1
  #  result = arr[0]
  #elsif arr.length > 1
  #  arr.sort!
  #  result = arr[-1] + arr[-2]
  #end
  #result
  arr.max(2).sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.combination(2) { |c| return true if c.sum == n }
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  'Hello, ' + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  Regexp.new('^[qwrtypsdfghjklzxcvbnm]', Regexp::IGNORECASE).match?(s)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  #if /^[01]+$/.match?(s)
  #  s.to_i(2) % 4 == 0
  #else
  #  false
  #end
  /^(0|00|([01]+00))$/.match?(s)
end

# Part 3

class BookInStock
# YOUR CODE HERE
 attr_accessor :isbn,:price
  def initialize(i, p)
    @isbn = i
    @price = p
    raise ArgumentError.new("Invalid ISBN") if isbn == ''
    raise ArgumentError.new("Invalid price") if price <= 0
  end
  def price_as_string
    '$' + ('%.2f' % price.to_s)
  end
end
