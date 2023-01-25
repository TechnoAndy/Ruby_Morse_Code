def decode_char(char)
  morsdict = {
    '.-' => 'A',
    '-...' => 'B',
    '-.-.' => 'C',
    '-..' => 'D',
    '.' => 'E',
    '..-.' => 'F',
    '--.' => 'G',
    '....' => 'H',
    '..' => 'I',
    '.---' => 'J',
    '-.-' => 'K',
    '.-..' => 'L',
    '--' => 'M',
    '-.' => 'N',
    '---' => 'O',
    '.--.' => 'P',
    '--.-' => 'Q',
    '.-.' => 'R',
    '...' => 'S',
    '-' => 'T',
    '..-' => 'U',
    '...-' => 'V',
    '.--' => 'W',
    '-..-' => 'X',
    '-.--' => 'Y',
    '--..' => 'Z',
    '-----' => '0',
    '.----' => '1',
    '..---' => '2',
    '...--' => '3',
    '....-' => '4',
    '.....' => '5',
    '-....' => '6',
    '--...' => '7',
    '---..' => '8',
    '----.' => '9',
    '.-.-.-' => 'Fullstop',
    '--..--' => 'Comma',
    '..--..' => 'Query'
  }

  morsdict[char]
end

def decode_word(word)
  mors_word = ''
  myWordArray = word.split
  myWordArray.each { |x| mors_word += decode_char(x) }
  mors_word
end

def decode(words)
  my_sentence = ''
  words = words.split('   ')
  words.each { |x| my_sentence += "#{decode_word(x)} " }
  my_sentence.chop
end

mors_sentence = decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
puts mors_sentence
