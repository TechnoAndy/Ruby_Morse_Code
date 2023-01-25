def decode_char(char)
    morsdict = { ".-" => "A", "-..."  => "B", "-.-." => "C", "-.." => "D",
                 "."  =>  "E", "..-." => "F", "--." => "G", "...." => "H",
                 ".." => "I", ".---"  => "J", "-.-" => "K", ".-.." => "L",
                 "--" => "M", "-."  => "N"  , "---" => "O", ".--." => "P",
                 "--.-" => "Q", ".-." => "R", "..." => "S", "-" => "T",
                 "..-" => "U", "...-" => "V", ".--" => "W", "-..-" => "X",
                 "-.--" => "Y", "--.." => "Z",
                 "-----" => "0", ".----" => "1", "..---" => "2", "...--" => "3",
                 "....-" => "4", "....." => "5", "-...." => "6", "--..." => "7",
                 "---.." => "8", "----." => "9", ".-.-.-" => "Fullstop",
                 "--..--" => "Comma", "..--.." => "Query" 
    }

    return morsdict[char]
end

def decode_word(word)
    morsWord = ""
    myWordArray = word.split
    myWordArray.each { |x| morsWord +=  decode_char(x) }
    return morsWord
end

def decode(words)
    mySentence = ""
    words = words.split("   ")
    words.each { |x| mySentence += decode_word(x) + " "}
    return mySentence.chop
end

morsSentence = decode(".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
puts morsSentence


