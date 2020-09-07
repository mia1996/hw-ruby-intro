# When done, submit this entire file to the autograder.

# Part 1

# Define a method sum(arr) that sums up the integer elements of the array. 
def sum arr
  arr.inject(0,:+)
end

# Define a method max_2_sum(arr) that returns the sum of the largest elements in the arry. Returns zero if the arry is zero. Returns value of the element if just one element
def max_2_sum arr
  
   if arr.empty?
    0
   else
    arr.max(2).reduce(:+)
   end
  
end
 
# Define a method sum_to_n?(arr, n) that takes the array of integer and n as argument and returns true when any two elements sum to the second argument.
def sum_to_n? arr, n
  
  if arr.size>=2
    for x in arr
      if arr.include?(n-x) and x != n-x or arr.count(x) > 1
        return true
      end
    end
  end
  
  false
end

# Part 2
# Define the method hello(name) that returns the string with the name concatenated after hello.
def hello(name)
  "Hello, #{name}"
end

# Define the method starts_with_consonant?(s) that returns true if the string starts with a consonant,otherwises returns false. It should works on empty strings and noletters.
def starts_with_consonant? s
  return false if s.empty?
  consonant = 'bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ'
  consonant.each_char{|c|
    return true if s.start_with?(c)
  }
  false
end

# Define a method binary_multiple_of_4?(s) that returns true if the string represents a binary that is multiple of 4. It should return false if the string cannot represent a binary number.
def binary_multiple_of_4? s
  if not s.empty? and (s.end_with?('00') or s=='0') and s.count('0-9')==(s.size)
    return true
  end
  false
end

# Part 3
# Define a class that sumarize the book informatin for the books in stock. It should getters and setters, act as constructor, deal with price_as_string.
class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    raise ArgumentError,'Invalid' if isbn.empty? or price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string()
    return '$' + '%.2f'% @price
  end
end
