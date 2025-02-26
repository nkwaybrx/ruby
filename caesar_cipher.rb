def caesar_cipher (string, num)
  alphabet_down = ("a".."z").to_a
  alphabet_up = ("A".."Z").to_a
  result = string.split('').map do |letter|
    if alphabet_down.include?(letter) == false &&
       alphabet_up.include?(letter) == false

      letter = letter
    else 
      if letter.downcase == letter 
        find_index = alphabet_down.find_index(letter)  
        sum = num + find_index
        if sum >= 26 
          sum -= 26
        end
        letter = alphabet_down[sum]  
      else 
        find_index = alphabet_up.find_index(letter) 
        sum = num + find_index
        if sum >= 26 
          sum -= 26
        end
        letter = alphabet_up[sum]   
      end  

    end  
  end
  return result.join('')
end  

p caesar_cipher("What a string!", 5)

#  x = ("a".."z").to_a
#  p x.length