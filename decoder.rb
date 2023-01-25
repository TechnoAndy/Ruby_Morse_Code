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
  mors_Word = ''
  myWordArray = word.split
  myWordArray.each { |x| mors_Word += decode_char(x) }
  mors_Word
end

def decode(words)
  my_Sentence = ''
  words = words.split('   ')
  words.each { |x| my_Sentence += "#{decode_word(x)} " }
  my_Sentence.chop
end

mors_Sentence = decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
puts mors_Sentence
