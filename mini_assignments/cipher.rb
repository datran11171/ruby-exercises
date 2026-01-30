def is_letter(character)
  character.downcase.ord.between?(97, 122)
end

def is_letter(character)
  character.match?(/\A[a-z]\z/i)
end



def letter_shift(character, num_shift)
  return character unless is_letter(character)
  base = character.ord.between?(65, 90) ? 'A'.ord : 'a'.ord
  shifted = (character.ord - base + num_shift) % 26 + base
  shifted.chr
end

def caesar_cipher(string, num_shift)
  puts string.chars.map {|c| letter_shift(c, num_shift)}.join
end

caesar_cipher("Hello, World!", 3)
caesar_cipher("What a string!", 5)
