def tickets(people)

  bill_25 = 0
  bill_50 = 0

  people.each do |bill|
    
    case bill
    
    when 25
      bill_25 += 1      # keep the 25
    when 50
      return 'NO' if bill_25 == 0
      bill_25 -= 1      # give 25 as change
      bill_50 += 1      #keep 50
    when 100
      if bill_50 >= 1 && bill_25 >= 1  # If we have at least one 50 bill and one 25 bill 
        bill_50 -= 1
        bill_25 -= 1
      elsif bill_25 >= 3
        bill_25 -= 3
      else
        return 'NO'
      end
    end  
  end
    
    'YES'
    
end

puts tickets([25, 25, 50])

# Description:
# The new "Avengers" movie has just been released! There are a lot of people at the cinema 
# box office standing in a huge line. Each of them has a single 100, 50 or 25 dollar bill. 
# An "Avengers" ticket costs 25 dollars.

# Vasya is currently working as a clerk. He wants to sell a ticket to every single person in this line.

# Can Vasya sell a ticket to every person and give change if he initially has no money 
# and sells the tickets strictly in the order people queue?

# Return YES, if Vasya can sell a ticket to every person and give change with the bills
# he has at hand at that moment. Otherwise return NO.