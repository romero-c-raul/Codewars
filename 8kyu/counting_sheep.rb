def countSheeps array
    counter = 0
    
    array.each do |boolean|
      if boolean == true
        counter += 1
      end
    end
    
    return counter
end

# Consider an array/list of sheep where some sheep may be missing from their place. 
# We need a function that counts the number of sheep present in the array (true means present).

