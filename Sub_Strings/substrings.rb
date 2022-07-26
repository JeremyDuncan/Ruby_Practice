# Author: Jeremy Duncan
# www.jeremy-duncan.com

def substrings(word, validWords)
  # seperate words into array. seperate from ", ! ? ." as well
  splitWords = word.split(/[\s,'!?.]+/)

  # If word in splitWords array matches word validWords Array,
  # then create object and add to wordValue count.
  splitWords.each_with_object(Hash.new(0)) do |wordKey, wordValue|
    wordValue[wordKey] += 1 if validWords.include?(wordKey.downcase)
  end
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
p substrings("Howdy partner, sit down! How's it going?", dictionary)
