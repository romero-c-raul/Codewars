def DNA_strand(dna)
  new_word = []
  dna.split("").each do |letter|
    if letter == 'A'
      letter = 'T'
      new_word.push(letter)
    elsif letter == 'T'
      letter = 'A'
      new_word.push(letter)
    elsif letter == 'G'
      letter = 'C'
      new_word.push(letter)
    else
      letter = 'G'
      new_word.push(letter)
    end
  end
  new_word.join
end

puts DNA_strand ("ATTGC") # return "TAACG"
puts DNA_strand ("GTAT") # return "CATA"

# Easiest way to do it

# def DNA_strand(dna)
#   dna.tr('ATCG','TAGC')
# end