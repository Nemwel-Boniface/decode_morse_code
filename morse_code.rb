# Morse code Hash Dictionary

@morse_code_dict = {
  ".-" => "A", "-..." => "B", "-.-." => "C", "-.." => "D", "." => "E",
  "..-." => "F", "--." => "G", "...." => "H", ".." => "I", ".---" => "J",
  "-.-" => "K", ".-.." => "L", "--" => "M", "-." => "N", "---" => "O",
  ".--." => "P", "--.-" => "Q", ".-." => "R", "..." => "S", "-" => "T",
  "..-" => "U", "...-" => "V", ".--" => "W", "-..-" => "X", "-.--" => "Y",
  "--.." => "Z"
}

def morse_decoder(string)
  @words = string.split('  ')
  @words.each do |word|
    process_code(word)
  end
end


morse_decoder('-- -.--   -. .- -- .')