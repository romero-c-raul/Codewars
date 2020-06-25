def DNA_strand(dna)
  new_word = []
  dna.split("").each do |letter|
    new_word.push('T') if letter == 'A'
    new_word.push('A') if letter == 'T'
    new_word.push('G') if letter == 'C'
    new_word.push('C') if letter == 'G'
  end
  new_word.join
end

puts DNA_strand ("ATTGC") # return "TAACG"
puts DNA_strand ("GTAT") # return "CATA"

# Easiest way to do it

# def DNA_strand(dna)
#   dna.tr('ATCG','TAGC')
# end