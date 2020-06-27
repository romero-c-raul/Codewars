def find_short(s)
  
    length = nil
    
    s.split(" ").each do |word|
      current_length = word.length
      if length == nil
        length = current_length
      elsif current_length < length
        length = current_length
      else
        next
      end
    end
     
    return length # l: length of the shortest word
end

puts find_short("bitcoin take over the world maybe who knows perhaps")
puts find_short("turns out random test cases are easier than writing out basic ones")
puts find_short("lets talk about javascript the best language")
puts find_short("i want to travel the world writing code one day")
puts find_short("Lets all go on holiday somewhere very cold")

# Description:
# Simple, given a string of words, return the length of the shortest word(s).
# String will never be empty and you do not need to account for different data types.
