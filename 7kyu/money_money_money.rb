def calculate_years(principal, interest, tax, desired)

  # end_of_year_total = 0
  # total_tax = 0
  # new_principal = 0
  counter = 0
  
  until principal >= desired
    end_of_year_total = principal * (1 + interest)
    total_tax = (end_of_year_total - principal) * tax
    new_principal = end_of_year_total - total_tax
    principal = new_principal
    counter += 1
  end
  
  return counter

end

puts calculate_years(1000, 0.05, 0.18, 1100)
puts calculate_years(1000, 0.05, 0.18, 1000)
puts calculate_years(1000, 0.01625, 0.18, 1200)
  # throw NotImplementedError.new "TODO: calculate_years"