def caesar_cipher (string, num)
  alphabet = ("a".."z").to_a
  result = string.split('').map do |letter|
    letter = letter.downcase
    if alphabet.include?(letter) == false
      letter = letter
    else 
      find_index = alphabet.find_index(letter)  
      sum = num + find_index
      if sum >= 26 
        sum -= 26
      end
      letter = alphabet[sum]  
    end  
  end
  return result.join('')
end  

p caesar_cipher("What a string!", 5)

#  x = ("a".."z").to_a
#  p x.length