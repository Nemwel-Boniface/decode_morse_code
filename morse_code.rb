# Morse code Hash Dictionary

@morse_code_dict = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
  '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
  '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
  '--..' => 'Z'
}

def converted_code(letter)
  @current_letter = @morse_code_dict[letter]
  @current_letter
end

def process_code(chars)
  @letters = chars.split
  @current_word = ''
  @letters.each do |letter|
    converted_code(letter)
    @current_word += converted_code(letter)
  end
  print "#{@current_word} "
end

def morse_decoder(string)
  @words = string.split('  ')
  @words.each do |word|
    process_code(word)
  end
end

# morse_decoder('-- -.--   -. .- -- .')

# Author 1: Nemwel
morse_decoder('-. . -- .-- . .-..')

# Author 2: Steve
morse_decoder('... - . ...- .')
