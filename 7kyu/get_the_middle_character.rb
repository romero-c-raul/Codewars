def get_middle(s)
  if s.length.odd?
    half = (s.length / 2)
    s[half]
  elsif s.length.even?
    half1 = (s.length / 2)
    half2 = (s.length / 2) - 1
    s[half2..half1]
  end
end

puts get_middle('hello')
puts get_middle('testing')
puts get_middle('middle')
puts get_middle('A')
puts get_middle('of')

# You are going to be given a word. Your job is to return the middle character of the word. 
# If the word's length is odd, return the middle character. If the word's length is even, return the middle 2 characters.