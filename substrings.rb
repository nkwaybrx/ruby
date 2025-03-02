def substrings (string, dictionary)
  downcased_string = string.downcase
  result_hash = {}
  downcased_string.split(' ').map do |word|
    dictionary.map do |nested_word|
      if word.include?(nested_word)
        if result_hash[nested_word]
          result_hash[nested_word] += 1
        else  
          result_hash[nested_word] = 1
        end 
      end  
    end  
  end   
  # debugger
  return result_hash

end  

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)