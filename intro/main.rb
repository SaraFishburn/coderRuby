# (1..10).each do |number|
#   puts "9 * #{number} = #{9 * number}"
# end

# if true
#   puts "it's true!"
# else
#   puts "it's false!"
# end

direction = 'N'

case direction
when 'N'
  puts 'North'
when 'S'
  puts 'South'
when 'E'
  puts 'East'
when 'W'
  puts 'West'
else
  puts 'I dont understand that direction!'
end

age = 14

case age
when 1..12
  puts 'Child'
when 13..17
  puts 'Teenager'
when 18..1 / 0.0
  puts 'adult'
end

bright = true
# if bright
#   puts 'turn down the lights'
# else
#   puts "it's dark in here"
# end

bright == true ? 'turn down the lights' : "it's dark in here"
