def is_square(x)
  if x < 0
    false
  elsif Math.sqrt(x) % 1 == 0
    true
  else
    false
  end
end

puts is_square(-1)   # false "-1 is not a perfect square"
puts is_square(0)    # true  "0 is a perfect square (0 * 0)"
puts is_square(3)    # false  "3 is not a perfect square"
puts is_square(4)    # true   "4 is a perfect square (2 * 2)"
puts is_square(25)   # true  "25 is a perfect square (5 * 5)"
puts is_square(26)   # false "26 is not a perfect square"

# You like building blocks. You especially like building blocks that are squares. 
# And what you even like more, is to arrange them into a square of square building blocks!

# Task
# Given an integral number, determine if it's a square number:

# In mathematics, a square number or perfect square is an integer that is the square of an integer; 
# in other words, it is the product of some integer with itself.

# The tests will always use some integral number, so don't worry about that in dynamic typed languages.