def persistence(n)
  
  current_number = n              
  current_digits = n.digits.count 
  counter = 0
  
  until current_digits <= 1                               # If the current digits are less or equal to 1, the loop ends
    current_number = current_number.digits.inject(:*)     # Takes current number, creates an array of each digit, and multiplies each digit
    current_digits = current_number.digits.count          # Takes the new current number calculated below, creates an array with each digit of said number, and counts how many elements are in array
    counter += 1                                          # Counter to determine how many times we go through the loop
  end
    
  return counter

end

puts persistence(39)
puts persistence(4)
puts persistence(25)
puts persistence(999)

# Description:
# Write a function, persistence, 
# that takes in a positive parameter num and returns its multiplicative persistence, 
# which is the number of times you must multiply the digits in num until you reach a single digit.