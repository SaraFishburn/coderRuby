# frozen_string_literal: true

def tie_my_shoes
  puts 'grab shoe laces'
  puts 'loop them around eachother'
  puts 'pull knot tight'
end

def cook
  puts 'fill a saucepan with water'
  puts 'place saucepan on stove'
  puts 'bring saucepan to boil'
  puts 'add pasta'
  puts 'cook for 10 minutes'
  puts 'drin and serve'
end

def show_heading(food)
  puts '------------------'
  puts "how to cook #{food}"
  puts '------------------'
end

def add(num1, num2)
  num1 + num2
end

def add_and_subtract(num1, num2)
  [num1 + num2, num1 - num2]
end

# x = add(5, 12)
p add_and_subtract(5, 12)
