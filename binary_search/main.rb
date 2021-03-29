# binary search code

def binary_search(array, value, final_index = 0)
  halfway = array.length / 2

  return final_index + halfway if array[halfway] == value

  if array[halfway] > value
    binary_search(array[0...halfway], value, final_index)
  else
    binary_search(array[(halfway + 1)..], value, final_index + halfway + 1)
  end
end

puts binary_search(array, value)
