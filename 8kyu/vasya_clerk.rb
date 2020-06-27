def tickets(people)

  bill_25 = 0
  bill_50 = 0
  
  people.each do |bill|
    
    if bill == 25
      bill_25 += 1  # Keep 25
    
    elsif bill == 50 && bill_25 >= 1
      bill_50 += 1 # Keep 50
      bill_25 -= 1 # Return 25
    
    elsif bill == 100 && (bill_25 > 2 || (bill_25 > 0 && bill_50 > 0))
      if bill_25 > 2
        bill_25 -= 3 # Return 25 x 3
      elsif 
        bill_25 -= 1 # Return 25
        bill_50 -= 1 # Return 50 for 75 total
      end
      
    else
      return 'NO'
      
    end 
  end
  return 'YES'  
end