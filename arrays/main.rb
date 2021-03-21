# grocery_list = ["milk", "eggs", "apples", "eggs", "bread"]
# # fib = [1, 1, 2, 3, 5, 8, 13]
# # tictactoe = [['x', '', 'o'],
# #              %w[x middle o],
# #              %w[o x x]]

# p grocery_list
# # p fib
# # puts tictactoe[1][1]

# grocery_list.push %w[pasta fruit vegetables]

# p grocery_list
# p grocery_list.index 'potato'
# # p 'hello'.length

# grocery_list[grocery_list.index 'eggs'] = 'replaced'

# p grocery_list.shift

# str = 'hello'

# str += ' world'

# puts str

# scores = [97, 42, 75]
# scores_above80 = scores.delete_if { |score| score < 80 }

# puts scores_above80

limit = 100
prime_array = (2..limit).to_a

prime_array.each_with_index do |prime, i|
  prime_array[i..(limit / prime)].each do |number|
    prime_array.delete(prime * number)
  end
end

p prime_array

# Create an array with range 2..(given limit) called prime_array

# loop through each number in array using .each_with_index
#   loop through part of the prime_array with range (index of number..(given limit / number))
#     remove all multiples of number from prime_array
