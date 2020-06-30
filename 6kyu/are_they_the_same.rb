def comp(array1, array2)
  
  if array1 == nil || array2 == nil      # Added this line to pass a case that was giving me nil instead of an array
    false                                # I was getting NoMethorError when using sort with nil
  
  else
    new_array = array1.map do |number|  # We iterate through each value in array_1, 
                  number * number       # we square it, and assign all values to new_array
                end

    new_array.sort! == array2.sort!     # We take new_array and array2, sort them in ascending order,
                                        # and check if they are equal
  end
end


 puts comp( [121, 144, 19, 161, 19, 144, 19, 11], 
        [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]) # true

