# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  s = 0
  if (arr.empty?)
      return s
  else
      arr.each do |i|
          s += i
      end
      return s
  end
end

def max_2_sum arr
  sum = 0
  if (arr.empty?)
      return sum
  elsif arr.size == 1
      return arr[0]
  else
      sortArray = arr.sort.reverse
      sum = sortArray[0] + sortArray[1]
      return sum
  end
end

def sum_to_n? arr, n
  
  if arr.size == 1
    return false
  end
  
  arr.each_with_index do |o, i|
      arr[i+1..-1].each do |j|
          if arr[i] + j == n
              return true
          end
      end
  end
  return false
  
end

# Part 2

def hello(name)
  return 'Hello, ' + name
end

def starts_with_consonant? s
  cons = ["A", "E", "I", "O", "U", "a", "e", "i", "o", "u"]
  if s.empty?
      return false
  end
  
  if s[0][/[a-zA-Z]+/]  == s[0]
    return (cons.include? s[0]).!
  else
    return false
  end
    
end

def binary_multiple_of_4? s
  begin
    return Integer(s) % 4 == 0
  rescue
    return false
  end
end

# Part 3

class BookInStock
  
  def initialize(i,p)
      
      if i.length != 0 and p > 0
          @isbn = i
          @price = p
      else
          raise ArgumentError
      end
  end
  
  def price_as_string
      puts '$' + sprintf('%.2f', @price)
      return '$' + sprintf('%.2f', @price)
  end
  
  attr_accessor :isbn
  attr_accessor :price
  
end
