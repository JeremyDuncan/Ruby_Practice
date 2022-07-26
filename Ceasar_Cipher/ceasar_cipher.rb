# Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:

#   > caesar_cipher("What a string!", 5)
#   => "Bmfy f xywnsl!"
# Quick Tips:

# You will need to remember how to convert a string into a number.
# Don’t forget to wrap from z to a.
# Don’t forget to keep the same case.

def ceasar_cipher(string, shift)
  shiftedLetters = []
  asciiString = string.bytes
  asciiString.each do |letter|
    if letter > 96 && letter < 123
      combined = letter + shift
      if combined > 122
        remainder = combined - 122
        shiftedLetters << remainder + 96
      else
        shiftedLetters << combined
      end
    elsif letter > 64 && letter < 91
      combined = letter + shift
      if combined > 90
        remainder = combined - 90
        shiftedLetters << remainder + 64
      else
        shiftedLetters << combined
      end
    else
      shiftedLetters << letter
    end
  end
  cipher = shiftedLetters.pack('c*')
end

p ceasar_cipher('Jeremy Duncan :)', 5)

# ASCII KEY
# a   -   z
# 97  -   122
# ----------------
# A   -   Z
# 65  -   90
# 32  =   " "
