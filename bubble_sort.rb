
def bubble_sort (source)  # function starts
  n = source.length - 1   # defines how much time should the code sort out the source array
    n.times do |a|  # creates a loop which will be ran as many times as it was defined in previous variable "n"
    for i in (0..source.length - 2)   # creates a loop which will sort out the array
      if source[i] > source[i + 1]  # sets a condition during which the code will be evaluated (if present array item is bigger than the next array item)
        source[i], source[i + 1] = source[i + 1], source[i]  # switches present and next items 
        p source  # checks what has happenned to our array
      end  # if loop ends
    end  # for loop ends  
  end  # times loop ends
  p source  # prints final array
  return source  # returns final array
end  # function ends

bubble_sort([4,3,78, 2, 0, 2, -1, 8])
# => [0,2,2,3,4,78]
