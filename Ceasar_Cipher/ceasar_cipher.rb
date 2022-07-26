# Author: Jeremy Duncan
# www.jeremy-duncan.com

def ceasar_cipher(string, shift)
  shiftedLetters = []
  # Convert string to array of Ascii numbers
  asciiString = string.bytes

  # iterate through array
  asciiString.each do |letter|
    # if Lowercase Letters
    if letter > 96 && letter < 123
      # add letter number and shift amount
      combined = letter + shift
      # if combined total goes past z(122)...
      if combined > 122
        # get remainder..
        remainder = combined - 122
        # and add remainder back at begining of alphabet
        shiftedLetters << remainder + 96
      else
        shiftedLetters << combined
      end
    # Else if Uppercase Letters...
    elsif letter > 64 && letter < 91
      combined = letter + shift
      if combined > 90
        remainder = combined - 90
        shiftedLetters << remainder + 64
      else
        shiftedLetters << combined
      end
    else
      # Added sapces, special characters etc..
      shiftedLetters << letter
    end
  end
  # Convert Ascii numbers to Characters
  cipher = shiftedLetters.pack('c*')
end

p ceasar_cipher('This is my Ceasar Cipher!!', 5) #=> "Ymnx nx rd Hjfxfw Hnumjw!!"

# ASCII KEY
# a   -   z
# 97  -   122
# ----------------
# A   -   Z
# 65  -   90
# 32  =   " "
