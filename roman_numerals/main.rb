# 1 = 'I'
# 5 = 'V'
# 10 = 'X'
# 50 = 'L'
# 100 = 'C'
# 500 = 'D'
# 1000 = 'M'

numerals = { 1 => 'I', 5 => 'V', 10 => 'X', 50 => 'L', 100 => 'C', 500 => 'D', 1000 => 'M' }

input = gets.chomp.to_i
p input

arr = []
numerals.each_key do |key|
  next unless key <= input

  arr << key
end

p arr

def convert(input, numerals, arr)
  p input
  p numerals[arr[-1]]
  remainder = input - arr[-1] while (input - arr[-1]).positive?

  arr.delete_at(-1) if remainder < arr[-1]

  convert(remainder, numerals, arr)
end

convert(input, numerals, arr)
