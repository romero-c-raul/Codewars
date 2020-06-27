def is_isogram(string)
  new_string = string.downcase.split("").uniq.join
  string = string.downcase
  new_string == string
end

puts is_isogram("Dermatoglyphics")  # true 
puts is_isogram("isogram")          # true 
puts is_isogram("aba")              # false "same chars may not be adjacent" 
puts is_isogram("moOse")            # false "same chars may not be same case" 
puts is_isogram("isIsogram")        # false 
puts is_isogram("")                 # true "an empty string is a valid isogram" 

# An isogram is a word that has no repeating letters, consecutive or non-consecutive. 
# Implement a function that determines whether a string that contains only letters is an isogram.
# Assume the empty string is an isogram. Ignore letter case.